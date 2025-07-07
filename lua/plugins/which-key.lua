return {
  "folke/which-key.nvim",
  lazy = false,  -- Make sure which-key loads immediately
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    require("which-key").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
    })
  end,
}
