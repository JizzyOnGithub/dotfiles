-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/akinsho/toggleterm.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    opts = {
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        else
          return 20
        end
      end,
      open_mapping = [[<c-\>]],
      start_in_insert = true,
      persist_mode = true,
      direction = 'float',
      auto_scroll = true,
      autochdir = true,
    }
  }
}
