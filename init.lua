require("core.options")
require("core.keymaps")
require("core.plugins")
require("core.plugin_config")
require("core.languages")

-- Exportar esquema de cores para o tmux
vim.cmd('set t_Co=256')
vim.cmd('set t_ut=')

-- Adicionar suporte para terminos 24bit (true color)
vim.cmd('if exists("+termguicolors") | set termguicolors | endif')

-- Exportar as cores para o tmux
vim.cmd('autocmd ColorScheme * lua require("export-colors").to_tmux()')
