return {
  "rebelot/heirline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local conditions = require("heirline.conditions")
    local utils = require("heirline.utils")

    ---------------------------------------------------------------------------
    -- 1. Time Tracker Module
    ---------------------------------------------------------------------------
    local TimeTracker = {}

    TimeTracker.db_path = vim.fn.stdpath("data") .. "/heirline_time_tracker.json"
    TimeTracker.db = {}
    TimeTracker.current_buf_start_time = 0

    --- Loads data. Note the change from `self` to `TimeTracker`.
    function TimeTracker.load()
        local file = io.open(TimeTracker.db_path, "r")
        if file then
            local data = file:read("*a")
            file:close()
            local ok, decoded = pcall(vim.fn.json_decode, data)
            if ok then
                TimeTracker.db = decoded or {}
            end
        end
    end

    --- Saves data. Note the change from `self` to `TimeTracker`.
    function TimeTracker.save()
        local json_data = vim.fn.json_encode(TimeTracker.db)
        local file = io.open(TimeTracker.db_path, "w")
        if file then
            file:write(json_data)
            file:close()
        end
    end

    --- Updates time for a buffer. Note the change from `self` to `TimeTracker`.
    function TimeTracker.update_time_for_buffer(bufnr)
        local fpath = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ":p")
        if fpath == "" or TimeTracker.current_buf_start_time == 0 then
            return
        end
        local elapsed = os.time() - TimeTracker.current_buf_start_time
        TimeTracker.db[fpath] = (TimeTracker.db[fpath] or 0) + elapsed
    end

    function TimeTracker.format_time(total_seconds)
        if total_seconds < 1 then return "0s" end
        local hours = math.floor(total_seconds / 3600)
        local mins = math.floor((total_seconds % 3600) / 60)
        local secs = math.floor(total_seconds % 60)
        local parts = {}
        if hours > 0 then table.insert(parts, hours .. "h") end
        if mins > 0 then table.insert(parts, mins .. "m") end
        if secs > 0 or #parts == 0 then table.insert(parts, secs .. "s") end
        return table.concat(parts, " ")
    end

    --- Main setup. Note the change from `self` to `TimeTracker`.
    function TimeTracker.setup()
        TimeTracker.load() -- Load data on startup.

        local time_tracker_group = vim.api.nvim_create_augroup("HeirlineTimeTracker", { clear = true })
        vim.api.nvim_create_autocmd("BufEnter", { group = time_tracker_group, pattern = "*", callback = function() TimeTracker.current_buf_start_time = os.time() end, })
        vim.api.nvim_create_autocmd("BufLeave", { group = time_tracker_group, pattern = "*", callback = function(args) TimeTracker.update_time_for_buffer(args.buf); TimeTracker.current_buf_start_time = 0 end, })
        vim.api.nvim_create_autocmd("VimLeave", { group = time_tracker_group, pattern = "*", callback = function() TimeTracker.update_time_for_buffer(vim.api.nvim_get_current_buf()); TimeTracker.save() end, })
        vim.fn.timer_start(30000, function() vim.cmd("redrawstatus"); TimeTracker.save() end, { repeats = -1 })
    end

    TimeTracker.setup()

    ---------------------------------------------------------------------------
    -- 2. Heirline Component Definitions
    ---------------------------------------------------------------------------
    local colors = {
      fg = "#c8d3f5", fg_dim = "#828bb8", blue = "#82aaff", blue_dark = "#4a6bd6",
      blue_light = "#b4d2ff", purple = "#c099ff", pink = "#ff7a93", cyan = "#86e1fc",
      green = "#7dd3fc", orange = "#ff8a80", red = "#ff5370", yellow = "#ffc777",
      normal_bg = "#4a6bd6", insert_bg = "#7dd3fc", visual_bg = "#c099ff",
      command_bg = "#ff8a80", replace_bg = "#ff5370",
    }

    local Align = { provider = "%=" }
    local Separator = { provider = " > ", hl = { fg = "fg_dim" } }
    local ViMode = {
        static = {
            mode_name_map = { n="NORMAL",v="VISUAL",i="INSERT",s="SELECT",R="REPLACE",c="COMMAND",t="TERMINAL" },
            mode_icon_map = { n="",v="󰈈",i="",s="",R="﯒",c="",t="" },
            mode_color_map = { n="normal_bg",i="insert_bg",v="visual_bg",s="purple",R="replace_bg",c="command_bg",t="green" }
        },
        init = function(self) self.mode = vim.fn.mode(1) end,
        provider = function(self) local m = self.mode:sub(1,1); return (self.mode_icon_map[m] or "").." "..(self.mode_name_map[self.mode] or "UNKNOWN") end,
        hl = function(self) return { bg=self.mode_color_map[self.mode:sub(1,1)] or "normal_bg", fg="#FFFFFF", bold=true } end,
    }
    local ViModeWithBorders = utils.surround({"",""},function() return ViMode.static.mode_color_map[vim.fn.mode(1):sub(1,1)] or "normal_bg" end, ViMode)
    local FileSize = { provider = function() local fsize=vim.fn.getfsize(vim.api.nvim_buf_get_name(0)); if fsize <= 0 then return""end; local s={'B','K','M','G','T'}; local i=1; while fsize>=1024 and i < #s do fsize=fsize/1024;i=i+1 end; return string.format(" %.1f%s",fsize,s[i]) end, hl={fg="fg_dim"}}
    local Diagnostics = { init=function(self) self.errors=#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.ERROR});self.warnings=#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.WARN});self.hints=#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.HINT})end,update={"DiagnosticChanged","BufEnter"},{condition=function(self)return self.errors>0 end,provider=function(self)return"  "..self.errors end,hl={fg="red"}},{condition=function(self)return self.warnings>0 end,provider=function(self)return"  "..self.warnings end,hl={fg="yellow"}},{condition=function(self)return self.hints>0 end,provider=function(self)return"  "..self.hints end,hl={fg="blue_light"}},}
    local FileName = { provider=function() local f=vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0),":t"); return f=="" and "[No Name]" or f end, hl={fg="fg",bold=true}}
    local FileType = { provider=function() local ft=vim.bo.filetype; return ft=="" and "" or string.upper(ft) end, hl={fg="fg_dim",bold=true}}
    local Ruler = { provider="Ln:%l Col:%c %P", hl={bg="blue_dark",fg="fg"}}

    -- NEW: Time Spent Component
    local TimeSpent = {
        condition = function() return vim.api.nvim_buf_get_name(0) ~= "" end,
        provider = function()
            local fpath = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":p")
            local persisted_time = TimeTracker.db[fpath] or 0
            local session_time = 0
            if TimeTracker.current_buf_start_time > 0 then
                session_time = os.time() - TimeTracker.current_buf_start_time
            end
            local total_time = persisted_time + session_time
            return "󰥔 " .. TimeTracker.format_time(total_time)
        end,
        hl = { fg = colors_fg }
    }
    
    local riteSideGroup = {
    -- The background will be applied by the surround function,
    -- but we can set a default foreground for all children here.
    hl = { fg = colors.fg },

    -- The children that will be displayed inside the border
    TimeSpent,
    { provider = " | ", hl = { fg = colors_fg} }, -- A small vertical separator
    Ruler,
    }

    local riteSide = utils.surround({ "", "" }, "blue_dark", riteSideGroup)   
    ---------------------------------------------------------------------------
    -- 3. Assemble the Statusline
    ---------------------------------------------------------------------------
    local MyStatusLine = {
        hl = function() return conditions.is_active() and "StatusLine" or "StatusLineNC" end,
        ViModeWithBorders, FileSize, Diagnostics,
        Align,
        FileName,
        Align,
        FileType, -- Added the component back
        Separator,
        riteSide, { provider = " " },
    }

    ---------------------------------------------------------------------------
    -- 4. Setup Heirline
    ---------------------------------------------------------------------------
    require("heirline").setup({
      statusline = MyStatusLine,
      opts = { colors = colors }
    })
  end,
}
