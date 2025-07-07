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
}
