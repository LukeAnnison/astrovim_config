local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)
map('n', '<leader>p', ":lua require('telescope').extensions.project.project{}<CR>", opts)
-- Toggleterm helpers
map('n', '<leader>gg', ":lua require('toggleterm.terminal').Terminal:new({cmd='lazygit', hidden=true}):toggle()<CR>", opts)
map('n', '<leader>py', ":lua require('toggleterm.terminal').Terminal:new({cmd='python', hidden=true}):toggle()<CR>", opts)
map('n', '<leader>js', ":lua require('toggleterm.terminal').Terminal:new({cmd='node', hidden=true}):toggle()<CR>", opts)
-- Run and debug shortcuts
map('n', '<leader>r', ":w<CR>:!%:p<CR>", { noremap = true, silent = true, desc = 'Run current file' })
map('n', '<leader>d', ":lua require('dap').continue()<CR>", { noremap = true, silent = true, desc = 'Debug current file' })
