vim.lsp.config('tailwindcss', {
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  init_options = {
    userLanguages = {
        typescript = "javascript",
        typescriptreact = "javascript",
        svelte = "html",
        vue = "html"
    }
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
vim.lsp.enable('tailwindcss')
