local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.tailwindcss.setup({
  capabilities = capabilities,
  filetypes = {
    "html", "css", "scss", "javascript", "javascriptreact",
    "typescript", "typescriptreact", "vue", "svelte"
  },
  init_options = {
    userLanguages = {
      typescript = "javascript",
      typescriptreact = "javascript",
    },
  },
})

