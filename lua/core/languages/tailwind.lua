local lspconfig = require("lspconfig")

lspconfig.tailwindcss.setup({
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  init_options = {
    userLanguages = {
      typescript = "javascript",
      typescriptreact = "javascript",
    },
  },
  settings = {
    tailwindCSS = {
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidScreen = "error",
        invalidVariant = "error",
        invalidConfigPath = "error",
      },
      experimental = {
        classRegex = {
          -- para suportar Tailwind com clsx ou tw`...`
          "clsx\\(([^)]*)\\)",
          "tw`([^`]*)`"
        },
      },
      validate = true,
    },
  },
})

