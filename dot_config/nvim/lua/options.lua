vim.api.nvim_create_autocmd("FileType", {
  pattern = "d",
  callback = function()
    vim.schedule(function()
      vim.cmd("LspStart serve_d")
    end)
  end,
})

-- Configure diagnostics to show in insert mode
vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    source = "if_many",
    prefix = "󰁕",
  },
  signs = true,
  underline = true,
  update_in_insert = true,  -- This is key - shows diagnostics in insert mode
  severity_sort = true,
  float = {
    source = "always",
    border = "rounded",
  },
})

-- Show diagnostics in a floating window when you hover
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter" },
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "cursor",
    }
    vim.diagnostic.open_float(nil, opts)
  end
})

local signs = { Error = " ", Warn = " ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end


vim.o.updatetime = 250

vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.mouse = 'a'

vim.opt.list = false
vim.opt.listchars = 'nbsp:◇,tab:→ ,extends:▸,precedes:◂,eol:⁋'

vim.opt.showcmd = true
vim.opt.autoread = true  -- auto load file changes occured outside vim
vim.opt.wrap = false     -- using wrapping-paper to show it in virtual text.

vim.cmd('set path+=**') -- vimd find searches into subdurectories

vim.opt.directory = vim.fn.stdpath('data') .. 'tmp'
vim.opt.undodir = vim.fn.stdpath('data') .. 'undo'

vim.opt.history = 100

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.clipboard = 'unnamedplus'

-- use spaces for tabs and whatnot
vim.opt.shiftround = true    -- round indent to sw compatible
vim.opt.expandtab = true     -- Use spaces instead of tabs
vim.opt.tabstop = 1          -- Display existing tabs as 2 spaces
vim.opt.shiftwidth = 2       -- Indent with 2 spaces
vim.opt.softtabstop = 2      -- Tab key inserts 2 spaces
vim.opt.autoindent = true    -- Keep indentation from previous line
vim.opt.smartindent = true   -- Smart indentation for code

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.swapfile = false

-- Set folding options

-- Prevent folds from auto-closing
vim.api.nvim_create_autocmd({"BufWritePost", "InsertLeave"}, {
  callback = function()
    -- Restore fold level after events that might reset it
    if vim.wo.foldmethod == "expr" then
      vim.cmd("normal! zx")  -- Update folds without changing levels
    end
  end,
})


