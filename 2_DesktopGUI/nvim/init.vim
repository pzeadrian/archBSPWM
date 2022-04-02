"--> SETTINGS"
source $HOME/.config/nvim/configs/general/settings.vim

"--> PLUGINS"
source $HOME/.config/nvim/configs/plugins.vim

"--> REMAPS OF KEYS
source $HOME/.config/nvim/configs/general/keys.vim

"--> PLUGINS CONFIGURATION
source $HOME/.config/nvim/configs/plugins-conf.vim

"--> Themes activation
set termguicolors
colorscheme onedark
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
