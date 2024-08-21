local builtin = require('telescope.builtin')

function SearchFunction()
  builtin.grep_srting({
    search = 'function ',
    prompt_title = 'Search Functions',
    use_regex = true,
  })
end

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sf', SearchFunction, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>gf', ':Telescope grep_string search=def<CR>', { noremap = true, silent = true })
