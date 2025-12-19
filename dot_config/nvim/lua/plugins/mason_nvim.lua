-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/williamboman/mason.nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
 {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "serve_d" }
    })
  end,
}
}
