-- To prevent commands from being re-mapped recursively
local opts = { noremap = true, silent = true }

-- Helper function for setting keymaps
local function map(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

-- =============================================================================
-- Keybinds for NORMAL and VISUAL Mode (when you are not typing text)
-- =============================================================================

-- Select All: Ctrl + a
map({ 'n', 'v', 'i' }, '<C-a>', 'ggVG', 'Select All')

-- Save (Write) Buffer: Ctrl + s
map({ 'n', 'v', 'i' }, '<C-s>', '<Esc>:w<CR>', 'Save File') -- Works in insert mode too

-- Quit Neovim: Ctrl + q
map({'n', 'i'}, '<C-q>', ':qa<CR>', 'Quit All')

-- Undo: Ctrl + z
map({'n', 'i'}, '<C-z>', 'u', 'Undo')

-- Redo: Ctrl + y
map({'n', 'i'}, '<C-y>', '<C-r>', 'Redo')

-- Open Command Line: Ctrl + /
map('n', '<C-/>', ':', 'Open Command Line')

-- Find (Search): Ctrl + f
map({ 'n', 'v' }, '<C-f>', '/', 'Find/Search')

-- Replace: Ctrl + r
-- This will open the command line pre-filled for a file-wide search and replace
map({ 'n', 'v' }, '<C-r>', ':%s/', 'Replace')

-- Paste: Ctrl + v
map('n', '<C-v>', 'p', 'Paste After Cursor')
map('n', '<S-C-v>', 'P', 'Paste Before Cursor') -- Added Shift+Ctrl+V for "Paste Before"

-- Lazy Plugin Manager: Ctrl + l
map('n', '<C-l>', ':Lazy home<CR>', 'Open Lazy Home')

-- Enter Insert Mode: Ctrl + i
map('n', '<C-i>', 'i', 'Enter Insert Mode')

-- =============================================================================
-- Keybinds for VISUAL Mode (when you have text selected)
-- =============================================================================

-- Copy (Yank) Selection: Ctrl + c
map('v', '<C-c>', 'y', 'Copy Selection')

-- Cut (Delete) Selection: Ctrl + x
map('v', '<C-x>', 'd', 'Cut Selection')

-- Paste over selection: Ctrl + v
map('v', '<C-v>', 'p', 'Paste over selection')

-- Indent/Unindent Selection
map('v', '<C-Right>', '>', 'Indent Selection')
map('v', '<C-Left>', '<', 'Unindent Selection')

-- Move selection up/down
map('v', '<C-Up>', ":m '<-2<CR>gv", 'Move Selection Up')
map('v', '<C-Down>', ":m '>+1<CR>gv", 'Move Selection Down')

