-- Requisição dos módulos do Telescope
local telescope = require('telescope')
local builtin = require('telescope.builtin')

-- Setup do Telescope com configurações globais
telescope.setup({
  defaults = {
    -- Argumentos para o ripgrep (rg)
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--ignore-case',
      '--ignore',
      '-g', '!.git/',
      '-g', '!node_modules/**',
      '-g', '!package*.json'
    },
    file_ignore_patterns = {
      "node_modules/",
      ".git/",
      "package*.json"
    },
  },
  pickers = {
    find_files = {
      hidden = true, -- Opcional, para incluir arquivos ocultos
    },
  }
})

-- Função personalizada para buscar a palavra 'function'
local function SearchFunction()
  builtin.live_grep({
    prompt_title = 'Search Functions',
    default_text = 'function',
  })
end

-- Função personalizada para buscar a palavra 'worlds'
local function SearchWorlds()
  builtin.live_grep({
    prompt_title = 'Search Worlds',
    default_text = 'worlds',
  })
end

-- Mapeamentos globais para o Telescope
vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true, silent = true })
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, { noremap = true, silent = true })
vim.keymap.set('n', '<Space>fg', builtin.live_grep, { noremap = true, silent = true })
vim.keymap.set('n', '<Space>fh', builtin.help_tags, { noremap = true, silent = true })

-- Mapeamentos das buscas personalizadas
vim.keymap.set('n', '<leader>sf', SearchFunction, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sw', SearchWorlds, { noremap = true, silent = true })

-- Exemplo de busca direta com Telescope
vim.keymap.set('n', '<leader>gf', ":Telescope grep_string search=def<CR>", { noremap = true, silent = true })

