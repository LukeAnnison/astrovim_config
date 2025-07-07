return {
  "folke/which-key.nvim",
  lazy = false,  -- Load immediately
  priority = 999,  -- Load before most other plugins
  opts = {
    icons = {
      group = vim.g.icons_enabled ~= false and "" or "+",
      rules = false,
      separator = "-",
    },
  },
  config = function(_, opts)
    require("which-key").setup(opts)
  end,
}
