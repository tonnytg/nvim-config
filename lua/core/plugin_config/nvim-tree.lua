-- Desabilitar netrw por questões de compatibilidade com NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Configuração do NvimTree
require'nvim-tree'.setup({
  view = {
    adaptive_size = true, -- Ajusta o tamanho do NvimTree automaticamente
  },
  actions = {
    open_file = {
      quit_on_open = false, -- Não fecha o NvimTree ao abrir um arquivo
    },
  },
})

-- Mapeamentos personalizados para NvimTree
local function on_attach(bufnr)
  local api = require'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- Renomear com 'r'
  vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))

  -- Deletar com 'd'
  vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))

  -- Criar arquivo com 'a'
  vim.keymap.set('n', 'a', api.fs.create, opts('Create'))

  -- Recortar com 'x'
  vim.keymap.set('n', 'x', api.fs.cut, opts('Cut'))

  -- Copiar com 'y'
  vim.keymap.set('n', 'y', api.fs.copy.node, opts('Copy'))

  -- Colar com 'p'
  vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))

  -- Mapeia 't' para abrir em nova aba
  vim.keymap.set('n', 't', api.node.open.tab, opts('Open: New Tab'))

  -- Mapeia 'Enter' para abrir o arquivo de forma padrão
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
end

require'nvim-tree'.setup({
  on_attach = on_attach,
})

-- Abre o NvimTree automaticamente em novas abas
vim.api.nvim_create_autocmd("TabNewEntered", {
  callback = function()
    require'nvim-tree.api'.tree.open()
  end,
})

-- Mapeamento adicional para abrir o NvimTree com <C-n>
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

