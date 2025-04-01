
-- Mapear CTRL + v (visual block) para copiar para o clipboard do sistema
vim.keymap.set('v', '<C-v>', '"+y', { noremap = true })

-- Mapear yy para copiar a linha para o clipboard do sistema
vim.keymap.set('n', 'yy', '"+yy', { noremap = true })

-- Config for Search Highline
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Busca por algo dentro dos arquivos
vim.keymap.set('n', '<C-f>', "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })

-- Ctags
vim.keymap.set('n', '<leader>ct', ':!ctags -R .<CR>', { noremap = true, silent = true, desc = "ctags recursive" })
