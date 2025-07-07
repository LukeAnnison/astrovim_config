-- Substrata colorscheme by kvrohit
return {
  {
    "lunarvim/substrata.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme substrata]])
    end,
  },
}

