-- Mason configuration with automatic tool installation

-- Customize Mason

---@type LazySpec
return {
  { "williamboman/mason.nvim", opts = { ui = { border = "rounded" } } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = { automatic_installation = true },
  },
  { "jay-babu/mason-nvim-dap.nvim", opts = { handlers = {} } },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "debugpy",
        "tree-sitter-cli",
      },
    },
  },
}
