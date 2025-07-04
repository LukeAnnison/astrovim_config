-- AstroCore configuration enabled with custom keybindings

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
        
        -- Custom project keybindings
        ["<Leader>test"] = {
          function()
            print("✅ Test keybinding works!")
            vim.notify("AstroVim keybindings are working!", vim.log.levels.INFO)
          end,
          desc = "Test Keybinding"
        },
        ["<Leader>1"] = {
          function() vim.cmd('edit /Users/lukeannison/projects/architect/02_constants/tree_index.md') end,
          desc = "Open Tree Index"
        },
        ["<Leader>cc"] = {
          function()
            require("telescope.builtin").find_files({
              cwd = "/Users/lukeannison/projects/architect/02_constants",
              prompt_title = "Constants Files",
            })
          end,
          desc = "Browse Constants Files"
        },
        ["<Leader>pp"] = {
          function()
            require("telescope.builtin").find_files({
              cwd = "/Users/lukeannison/projects/architect",
              prompt_title = "Project Files",
            })
          end,
          desc = "Browse Project Files"
        },
        ["<Leader>ut"] = {
          function()
            local themes = {
              "substrata",
              "catppuccin-mocha",
              "tokyonight-night", 
              "kanagawa-wave",
              "astrodark"
            }
            local current = vim.g.colors_name or "astrodark"
            local next_idx = 1
            for i, theme in ipairs(themes) do
              if theme == current then
                next_idx = (i % #themes) + 1
                break
              end
            end
            vim.cmd("colorscheme " .. themes[next_idx])
            vim.notify("Switched to: " .. themes[next_idx], vim.log.levels.INFO)
          end,
          desc = "Toggle Theme"
        },
      },
    },
  },
}
