local disable_keys = {
    'h', 'j', 'k', 'l',  -- movement (we'll use arrows)
    'w', 'b', 'e',       -- word movement  
    'x', 'X',            -- delete char
    'd', 'D',            -- delete
    'y', 'Y',            -- yank
    'p', 'P',            -- paste
    'c', 'C',            -- change
    's', 'S',            -- substitute
    'r', 'R',            -- replace
    'u', 'U',            -- undo/case
    'o', 'O',            -- open line
    'a', 'A',            -- append
    'v', 'V',            -- visual
    'n', 'N',            -- next search
    'f', 'F', 't', 'T',  -- find
    'g', 'G',            -- go to
    '/', '?',            -- search
    ':', ';',            -- command/repeat
    '.', ',',            -- repeat/reverse
    '[', ']',            -- various jumps
    '{', '}',            -- paragraph movement
    '(', ')',            -- sentence movement
    '<', '>',            -- indent
    '=',                 -- format
    '~',                 -- case toggle
    'q',                 -- record macro
    'm',                 -- mark
    '`', "'",            -- go to mark
}

-- Map all these keys to do nothing in normal mode
for _, key in ipairs(disable_keys) do
    vim.keymap.set('n', key, '<Nop>')
    vim.keymap.set('n', key:upper(), '<Nop>')
end

-- === NORMAL EDITOR KEYBINDS ===
-- Copy, Cut, Paste (work in all modes)
vim.keymap.set({'n', 'v'}, '<C-c>', '"+y', { desc = 'Copy' })
vim.keymap.set({'n', 'v'}, '<C-x>', '"+x', { desc = 'Cut' })  
vim.keymap.set({'n', 'v', 'i'}, '<C-v>', '<C-r>+', { desc = 'Paste' })

-- Undo/Redo
vim.keymap.set({'n', 'i'}, '<C-z>', '<Esc>u', { desc = 'Undo' })
vim.keymap.set({'n', 'i'}, '<C-y>', '<Esc><C-r>', { desc = 'Redo' })

-- Save/Quit
vim.keymap.set({'n', 'i'}, '<C-s>', '<Esc>:w<CR>', { desc = 'Save' })
vim.keymap.set({'n', 'i'}, '<C-q>', '<Esc>:confirm quit<CR>', { desc = 'Quit with confirmation' })

-- Command line
vim.keymap.set({'n', 'i'}, '<C-e>', '<Esc>:', { desc = 'Open command line' })

-- Search
vim.keymap.set({'n', 'i'}, '<C-f>', '<Esc>/', { desc = 'Search' })
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { desc = 'Clear search highlight' })
 
-- === MOVEMENT ===
-- Move lines up/down
vim.keymap.set({'n', 'i'}, '<C-Up>', '<Esc>:m .-2<CR>==gi', { desc = 'Move line up' })
vim.keymap.set({'n', 'i'}, '<C-Down>', '<Esc>:m .+1<CR>==gi', { desc = 'Move line down' })
vim.keymap.set('v', '<C-Up>', ':m \'<-2<CR>gv=gv', { desc = 'Move selection up' })
vim.keymap.set('v', '<C-Down>', ':m \'>+1<CR>gv=gv', { desc = 'Move selection down' })

-- Jump between functions/folds (what Ctrl+Up/Down normally does)
vim.keymap.set({'n', 'i'}, '<A-Up>', '<Esc>{', { desc = 'Jump to previous paragraph/function' })
vim.keymap.set({'n', 'i'}, '<A-Down>', '<Esc>}', { desc = 'Jump to next paragraph/function' })

-- === ADDITIONAL SANE KEYBINDS ===
-- Select All
vim.keymap.set({'n', 'i'}, '<C-a>', '<Esc>ggVG', { desc = 'Select all' })

-- New file/tab
vim.keymap.set({'n', 'i'}, '<C-n>', '<Esc>:enew<CR>', { desc = 'New file' })
vim.keymap.set({'n', 'i'}, '<C-t>', '<Esc>:tabnew<CR>', { desc = 'New tab' })

-- Close tab/buffer
vim.keymap.set({'n', 'i'}, '<C-w>', '<Esc>:confirm bd<CR>', { desc = 'Close buffer' })

-- Find and replace
vim.keymap.set({'n', 'i'}, '<C-h>', '<Esc>:%s/', { desc = 'Find and replace' })

-- Duplicate line
vim.keymap.set({'n', 'i'}, '<C-d>', '<Esc>:t.<CR>', { desc = 'Duplicate line' })

-- Go to line
vim.keymap.set({'n', 'i'}, '<C-g>', '<Esc>:call inputsave()<CR>:let line = input("Go to line: ")<CR>:call inputrestore()<CR>:execute "normal! " . line . "G"<CR>', { desc = 'Go to line' })

-- Make arrow keys work normally (insert mode stays in insert mode)
-- vim.keymap.set('i', '<Up>', '<Up>')
-- vim.keymap.set('i', '<Down>', '<Down>')  
-- vim.keymap.set('i', '<Left>', '<Left>')
-- vim.keymap.set('i', '<Right>', '<Right>')

-- Arrow keys in normal mode
vim.keymap.set('n', '<Up>', 'k')
vim.keymap.set('n', '<Down>', 'j')
vim.keymap.set('n', '<Left>', 'h') 
vim.keymap.set('n', '<Right>', 'l')

-- Shift + arrows for selection
vim.keymap.set({'n', 'i'}, '<S-Up>', '<Esc>v<Up>', { desc = 'Select up' })
vim.keymap.set({'n', 'i'}, '<S-Down>', '<Esc>v<Down>', { desc = 'Select down' })
vim.keymap.set({'n', 'i'}, '<S-Left>', '<Esc>v<Left>', { desc = 'Select left' })
vim.keymap.set({'n', 'i'}, '<S-Right>', '<Esc>v<Right>', { desc = 'Select right' })

-- Extend selection in visual mode
vim.keymap.set('v', '<S-Up>', '<Up>')
vim.keymap.set('v', '<S-Down>', '<Down>')
vim.keymap.set('v', '<S-Left>', '<Left>')
vim.keymap.set('v', '<S-Right>', '<Right>')

-- Ctrl+Shift for word selection
vim.keymap.set({'n', 'i'}, '<C-S-Left>', '<Esc>vb', { desc = 'Select word left' })
vim.keymap.set({'n', 'i'}, '<C-S-Right>', '<Esc>ve', { desc = 'Select word right' })

-- === HOME/END KEYS ===
vim.keymap.set({'n', 'i'}, '<Home>', '<Esc>0i', { desc = 'Go to line start' })
vim.keymap.set({'n', 'i'}, '<End>', '<Esc>$a', { desc = 'Go to line end' })
vim.keymap.set({'n', 'i'}, '<C-Home>', '<Esc>ggi', { desc = 'Go to file start' })
vim.keymap.set({'n', 'i'}, '<C-End>', '<Esc>Ga', { desc = 'Go to file end' })

-- === BACKSPACE/DELETE ===
vim.keymap.set('i', '<BS>', '<BS>')
vim.keymap.set('i', '<Del>', '<Del>')
vim.keymap.set('n', '<BS>', 'i<BS>')
vim.keymap.set('n', '<Del>', 'i<Del>')

-- Disable Ex mode
vim.keymap.set('n', 'Q', '<Nop>')

-- Disable macro recording
vim.keymap.set('n', 'q', '<Nop>')

-- Disable substitute
vim.keymap.set('n', 's', '<Nop>')
