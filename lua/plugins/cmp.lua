return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    {
      "onsails/lspkind.nvim",
      lazy = false,
      init = function()
        local ok, lspkind = pcall(require, "lspkind")
        if ok and not lspkind.setup then
          lspkind.init()
        end
      end,
      config = function(_, opts)
        require("lspkind").init(opts)
      end,
      opts = {
        mode = "symbol",
        symbol_map = {
          Array = "󰅪",
          Boolean = "⊨",
          Class = "󰌗",
          Constructor = "",
          Key = "󰌆",
          Namespace = "󰅪",
          Null = "NULL",
          Number = "#",
          Object = "󰀚",
          Package = "󰏗",
          Property = "",
          Reference = "",
          Snippet = "",
          String = "󰀬",
          TypeParameter = "󰊄",
          Unit = ""
        }
      }
    }
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources(vim.list_extend(opts.sources or {}, {
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
    }))
    return opts
  end,
}
