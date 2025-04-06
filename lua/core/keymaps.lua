
-- Mapear CTRL + v (visual block) para copiar para o clipboard do sistema
vim.keymap.set('v', '<C-v>', '"+y', { noremap = true })

-- Mapear yy para copiar a linha para o clipboard do sistema
vim.keymap.set('n', 'yy', '"+yy', { noremap = true })

-- Config for Search Highline
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Busca por algo dentro dos arquivos
vim.keymap.set('n', '<C-f>', "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })

-- Modo normal: adiciona indentação na linha atual
vim.keymap.set("n", "<Tab>", ">>", { noremap = true, silent = true })

-- Modo visual: adiciona indentação em todas as linhas selecionadas
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })

-- Modo visual: remove indentação com Shift+Tab
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

-- Modo normal: remove indentação na linha atual com Shift+Tab
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true, silent = true })

-- Ctags
vim.keymap.set('n', '<leader>ct', ':!ctags -R .<CR>', { noremap = true, silent = true, desc = "ctags recursive" })
