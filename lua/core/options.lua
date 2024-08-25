-- Mapear CTRL + v (visual block) para copiar para o clipboard do sistema
vim.keymap.set('v', '<C-v>', '"+y', { noremap = true })

-- Mapear yy para copiar a linha para o clipboard do sistema
vim.keymap.set('n', 'yy', '"+yy', { noremap = true })

-- Config for Search Highline
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
