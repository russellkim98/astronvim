-- Customize Mason plugins

---@type LazySpec

return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "pyright",
        -- other LSP servers
      },
      handlers = {
        function(server_name)
          local lspconfig = require "lspconfig"
          local opts = {}

          if server_name == "pyright" then
            opts.settings = {
              python = {
                debugger = {
                  justMyCode = false,
                },
              },
            }
          end

          lspconfig[server_name].setup(opts)
        end,
      },
    },
  },
}
