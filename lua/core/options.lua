-- Set o as local variable
local o = vim.opt

o.number = true        -- Mostrar números nas linhas
o.relativenumber = true -- Mostrar números relativos
o.expandtab = true     -- Converter tabs em espaços
o.shiftwidth = 4       -- Número de espaços para cada indentação
o.tabstop = 4          -- Número de espaços para tabs
o.smartindent = true   -- Indentar automaticamente

-- Habilitar o uso do clipboard do sistema para yank e paste
vim.opt.clipboard = 'unnamedplus'

-- Mapear CTRL + v (visual block) para copiar para o clipboard do sistema
vim.keymap.set('v', '<C-v>', '"+y', { noremap = true })

-- Mapear yy para copiar a linha para o clipboard do sistema
vim.keymap.set('n', 'yy', '"+yy', { noremap = true })
