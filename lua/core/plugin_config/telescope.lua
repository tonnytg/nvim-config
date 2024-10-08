local builtin = require('telescope.builtin')

-- Função personalizada para buscar ignorando node_modules
function SearchFunction()
  builtin.grep_string({
    search = 'function',
    prompt_title = 'Search Functions',
    use_regex = true,
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
  })
end

-- Função personalizada para buscar ignorando node_modules
function SearchWorlds()
  builtin.grep_string({
    search = 'worlds',
    prompt_title = 'Search Worlds',
    use_regex = true,
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
  })
end
-- Mapeamentos para o Telescope
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sf', SearchFunction, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sw', SearchWorlds, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>gf', ':Telescope grep_string search=def<CR>', { noremap = true, silent = true })

