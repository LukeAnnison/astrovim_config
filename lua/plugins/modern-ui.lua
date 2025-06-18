-- Modern UI enhancements for Warp-like aesthetic
return {
  -- Add transparency and modern styling
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        groups = {
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
          'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'Tree', 'NonText',
          'SignColumn', 'CursorLineNr', 'EndOfBuffer',
        },
        extra_groups = {
          "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
          "NvimTreeNormal", -- NvimTree
        },
        exclude_groups = {}, -- groups you don't want to clear
      })
    end,
  },
  
  -- Modern indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User AstroFile",
    config = function()
      require("ibl").setup({
        indent = {
          char = "▏",
          tab_char = "▏",
        },
        scope = {
          enabled = true,
          show_start = false,
          show_end = false,
          char = "▎",
        },
        exclude = {
          filetypes = {
            "help",
            "alpha",
            "dashboard",
            "neo-tree",
            "Trouble",
            "lazy",
            "mason",
            "notify",
            "toggleterm",
            "lazyterm",
          },
        },
      })
    end,
  },
  
  -- Modern scrollbar
  {
    "petertriho/nvim-scrollbar",
    event = "User AstroFile",
    config = function()
      require("scrollbar").setup({
        show = true,
        handle = {
          text = " ",
          color = "#3b4261",
          hide_if_all_visible = true,
        },
        marks = {
          Search = { color = "#ff9e64" },
          Error = { color = "#f7768e" },
          Warn = { color = "#e0af68" },
          Info = { color = "#7aa2f7" },
          Hint = { color = "#1abc9c" },
          Misc = { color = "#9d7cd8" },
        },
        handlers = {
          gitsigns = true,
        },
      })
    end,
  },
  
  -- Modern smooth scrolling
  {
    "karb94/neoscroll.nvim",
    event = "User AstroFile",
    config = function()
      require('neoscroll').setup({
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = true,
        stop_eof = true,
        use_local_scrolloff = false,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
        easing_function = 'quadratic',
        pre_hook = nil,
        post_hook = nil,
      })
    end,
  },
}

