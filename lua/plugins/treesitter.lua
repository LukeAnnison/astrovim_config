-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "python",
      "javascript",
      "typescript",
      "json",
      "yaml",
      "markdown",
      "bash",
      "cpp",
      "go",
      "rust",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    fold = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
  },
}
