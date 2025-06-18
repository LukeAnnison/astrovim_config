-- Substrata colorscheme by kvrohit
return {
  {
    "kvrohit/substrata.nvim",
    name = "substrata",
    lazy = false,
    priority = 1000,
    config = function()
      require("substrata").setup({
        transparent = true, -- Enable transparency for modern look
        italic_comments = true,
        italic_keywords = false,
        italic_booleans = false,
        italic_functions = false,
        italic_variables = false,
      })
    end,
  },
}

