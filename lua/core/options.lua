-- Set o as local variable
local o = vim.opt

o.number = true        -- Mostrar números nas linhas
o.relativenumber = true -- Mostrar números relativos
o.expandtab = true     -- Converter tabs em espaços
o.shiftwidth = 4       -- Número de espaços para cada indentação
o.tabstop = 4          -- Número de espaços para tabs
o.smartindent = true   -- Indentar automaticamente
o.backspace = '2'
o.showcmd = true
o.laststatus = 2
o.autowrite = true
o.cursorline = true
o.autoread = true

-- use spaces for tabs and whatnot
o.shiftround = true
o.expandtab = true

-- Habilitar o uso do clipboard do sistema para yank e paste
o.clipboard = 'unnamedplus'

vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Habilitar folding baseado na indentação
o.foldmethod = 'indent'

-- Definir o nível de fold inicial (0 significa tudo expandido)
o.foldlevel = 99

-- Permite que você veja o número de linhas dentro de um fold
o.foldcolumn = '1'

-- Desabilitar o folding automático ao abrir o arquivo
o.foldenable = false

