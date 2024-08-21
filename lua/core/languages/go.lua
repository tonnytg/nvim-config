-- lua/core/go.lua
local nvim_lsp = require('lspconfig')
local cmp = require('cmp')

-- Configuração do gopls
nvim_lsp.gopls.setup({
  on_attach = function(client, bufnr)
    -- Outras configurações
  end,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

-- Configuração do nvim-cmp para autocompletar
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- Use vsnip como exemplo
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Remove o mapeamento padrão do <C-y>
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Aceitar a primeira sugestão no enter
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- Adicione mais sources conforme necessário
  }, {
    { name = 'buffer' },
  })
})
