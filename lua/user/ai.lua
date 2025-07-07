local map = vim.keymap.set

map('v', '<leader>ai', ':ChatGPTEditWithInstructions<CR>', { noremap = true, silent = true, desc = 'Refactor code with AI' })
map('v', '<leader>ae', ':ChatGPTExplain<CR>', { noremap = true, silent = true, desc = 'Explain code with AI' })
map('v', '<leader>at', ':ChatGPTComplete<CR>', { noremap = true, silent = true, desc = 'Generate tests with AI' })
map('v', '<leader>ac', ':ChatGPT<CR>', { noremap = true, silent = true, desc = 'Codex mode' })
