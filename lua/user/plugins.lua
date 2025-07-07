return {
  {
    'AstroNvim/astrocore',
    opts = {
      features = {
        autopairs = true,
        cmp = true,
        diagnostics_mode = 3,
        highlighturl = true,
        notifications = true,
      },
    },
  },
  { 'nvim-telescope/telescope.nvim', cmd = 'Telescope', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-tree/nvim-tree.lua', cmd = 'NvimTreeToggle' },
  { 'lewis6991/gitsigns.nvim', event = 'BufReadPre' },
  { 'folke/persistence.nvim', event = 'BufReadPre', config = function()
      require('persistence').setup()
    end },
  { 'LinArcX/telescope-command-palette.nvim', lazy = true, dependencies = { 'nvim-telescope/telescope.nvim' }, config = function()
      require('telescope').load_extension('command_palette')
    end },
  -- AI-assisted features
  {
    'jackMort/ChatGPT.nvim',
    cmd = { 'ChatGPT', 'ChatGPTEditWithInstructions' },
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {
      api_key_cmd = 'echo $OPENAI_API_KEY',
    },
  },
  -- Zen and Twilight for focused coding
  { 'folke/zen-mode.nvim', cmd = 'ZenMode' },
  { 'folke/twilight.nvim', cmd = 'Twilight' },
  -- Enhanced project navigation
  { 'nvim-telescope/telescope-frecency.nvim', lazy = true, dependencies = { 'tami5/sqlite.lua' } },
  { 'nvim-telescope/telescope-project.nvim', lazy = true },
}
