-- Customize Mason plugins

---@type LazySpec

-- In your plugin specifications (e.g., in a file under lua/user/)
return {
  -- ... other plugin specifications ...
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "pyright", -- Or "ruff_lsp" if you're using that
        -- Add other LSP servers you want to ensure are installed
      },
      handlers = {
        function(server_name, server_config) -- server_config now passed
          if server_name == "pyright" then
            server_config.settings = server_config.settings or {}
            server_config.settings.python = server_config.settings.python or {}
            server_config.settings.python.debugger = server_config.settings.python.debugger or {}
            server_config.settings.python.debugger.justMyCode = false
          end
          return server_config
        end,
      },
    },
  },

  -- ... other plugin specifications ...
}
