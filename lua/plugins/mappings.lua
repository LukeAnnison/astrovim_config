-- Define options for key mappings
return {
  "folke/which-key.nvim",
  opts = {
    defaults = {
      ["<leader>"] = {
        e = { name = "Explorer" },
        f = {
          name = "File",
          e = { "Explorer" },
        },
      },
    },
  },
}
