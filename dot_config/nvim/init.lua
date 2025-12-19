require 'options'
require 'bindings'
require("config.lazy")
local colors = {
  -- Background tones (from your image)
  bg = "#0a0e1a",           -- Deep space background
  bg_light = "#151b2e",     -- Lighter background
  bg_highlight = "#1e2a42", -- Selection/highlight background
  
  -- Foreground/text
  fg = "#c8d3f5",           -- Main text (light blue-white)
  fg_dim = "#828bb8",       -- Comments, dimmed text
  
  -- Blues (primary theme color)
  blue = "#82aaff",         -- Bright blue (keywords, functions)
  blue_dark = "#4a6bd6",    -- Darker blue
  blue_light = "#b4d2ff",   -- Light blue (strings)
  
  -- Nebula accent colors (from your background)
  purple = "#c099ff",       -- Purple (types, constants)
  pink = "#ff7a93",         -- Pink/magenta (operators, special)
  cyan = "#86e1fc",         -- Cyan (variables, identifiers)
  
  -- Supporting colors
  green = "#7dd3fc",        -- Success, additions (blue-green)
  orange = "#ff8a80",       -- Warnings (soft orange-pink)
  red = "#ff5370",          -- Errors, deletions
  yellow = "#ffc777",       -- Special highlights
  
  -- UI colors
  border = "#3e68d7",       -- Window borders (blue)
  selection = "#1e3a8a",    -- Visual selection
  search = "#2563eb",       -- Search highlights
}

-- Clear existing highlights
vim.g.colors_name = "nebula"

local function highlight(group, opts)
  local cmd = "highlight " .. group
  if opts.fg then cmd = cmd .. " guifg=" .. opts.fg end
  if opts.bg then cmd = cmd .. " guibg=" .. opts.bg end
  if opts.style then cmd = cmd .. " gui=" .. opts.style end
  vim.cmd(cmd)
end

-- Editor highlights
highlight("Normal", { fg = colors.fg, bg = colors.bg })
highlight("NormalFloat", { fg = colors.fg, bg = colors.bg_light })
highlight("Comment", { fg = colors.fg_dim, style = "italic" })
highlight("LineNr", { fg = colors.fg_dim })
highlight("CursorLine", { bg = colors.bg_highlight })
highlight("CursorLineNr", { fg = colors.blue })
highlight("Visual", { bg = colors.selection })
highlight("Search", { bg = colors.search })
highlight("IncSearch", { bg = colors.pink, fg = colors.bg })

-- Syntax highlighting
highlight("Keyword", { fg = colors.blue, style = "bold" })
highlight("Function", { fg = colors.blue_light })
highlight("String", { fg = colors.cyan })
highlight("Number", { fg = colors.purple })
highlight("Boolean", { fg = colors.purple })
highlight("Type", { fg = colors.purple, style = "bold" })
highlight("Constant", { fg = colors.purple })
highlight("Variable", { fg = colors.fg })
highlight("Operator", { fg = colors.pink })
highlight("Special", { fg = colors.pink })
highlight("Identifier", { fg = colors.cyan })

-- D-specific highlights (if you want to customize D syntax specifically)
highlight("@keyword.d", { fg = colors.blue, style = "bold" })
highlight("@type.d", { fg = colors.purple, style = "bold" })
highlight("@string.d", { fg = colors.cyan })
highlight("@number.d", { fg = colors.purple })

-- UI elements
highlight("Pmenu", { fg = colors.fg, bg = colors.bg_light })
highlight("PmenuSel", { fg = colors.bg, bg = colors.blue })
highlight("FloatBorder", { fg = colors.border })
highlight("StatusLine", { fg = colors.fg, bg = colors.bg_light })
highlight("TabLine", { fg = colors.fg_dim, bg = colors.bg_light })
highlight("TabLineSel", { fg = colors.blue, bg = colors.bg })

-- Diagnostics
highlight("DiagnosticError", { fg = colors.red })
highlight("DiagnosticWarn", { fg = colors.yellow })
highlight("DiagnosticInfo", { fg = colors.blue })
highlight("DiagnosticHint", { fg = colors.cyan })

local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')
npairs.setup({map_cr=false})

-- skip it, if you use another global object
_G.MUtils= {}

-- old version
-- MUtils.completion_confirm=function()
  -- if vim.fn["coc#pum#visible"]() ~= 0 then
    -- return vim.fn["coc#_select_confirm"]()
  -- else
    -- return npairs.autopairs_cr()
  -- end
-- end

-- new version for custom pum
MUtils.completion_confirm=function()
    if vim.fn["coc#pum#visible"]() ~= 0  then
        return vim.fn["coc#pum#confirm"]()
    else
        return npairs.autopairs_cr()
    end
end

remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})

MUtils.BS = function()
  if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
    return npairs.esc('<c-e>') .. npairs.autopairs_bs()
  else
    return npairs.autopairs_bs()
  end
end
remap('i', '<bs>', 'v:lua.MUtils.BS()', { expr = true, noremap = true })

local coc_is_active = function()
  -- Helper function to check if CoC's completion menu is visible
  return vim.fn['coc#pum#visible']() == 1
end

local check_backspace = function()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s')
end

-- Use Tab to navigate the completion menu
vim.keymap.set('i', '<Tab>', function()
  if coc_is_active() then
    return vim.fn['coc#pum#next'](1)
  elseif check_backspace() then
    return '<Tab>'
  else
    vim.fn['coc#refresh']()
    return ''
  end
end, { expr = true, silent = true })

vim.keymap.set('i', '<S-Tab>', function()
  if coc_is_active() then
    return vim.fn['coc#pum#prev'](1)
  else
    return '<C-h>' -- Or whatever you want Shift-Tab to do
  end
end, { expr = true, silent = true })

-- Use Enter to confirm the completion selection
vim.keymap.set('i', '<CR>', function()
  if coc_is_active() then
    return vim.fn['coc#pum#confirm']()
  else
    return vim.api.nvim_replace_termcodes('<C-g>u<CR>', true, true, true)
  end
end, { expr = true, silent = true })
