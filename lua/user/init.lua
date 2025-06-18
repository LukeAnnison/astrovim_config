-- AstroVim v5 User Configuration
print("🔧 User config is loading!")

-- Return configuration as astrocore plugin spec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      autopairs = true,           -- enable autopairs at start
      cmp = true,                 -- enable completion at start
      diagnostics_mode = 3,       -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true,        -- highlight URLs at start
      notifications = true,       -- enable notifications at start
    },
    
    -- Configure default mappings
    mappings = {
      n = {
        -- Custom project keybindings
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
        ["<Leader>test"] = {
          function()
            print("✅ Test keybinding works!")
            vim.notify("AstroVim keybindings are working!", vim.log.levels.INFO)
          end,
          desc = "Test Keybinding"
        },
        -- Additional useful mappings
        ["<Leader>pp"] = {
          function()
            require("telescope.builtin").find_files({
              cwd = "/Users/lukeannison/projects/architect",
              prompt_title = "Project Files",
            })
          end,
          desc = "Browse Project Files"
        },
      },
    },
  },
}

