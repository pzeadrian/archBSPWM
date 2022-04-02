call plug#begin('$HOME/.config/nvim/plugged')

"--> Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"--> Autopairs
Plug 'jiangmiao/auto-pairs'

"--> Syntax Support
Plug 'sheerun/vim-polyglot'

"--> Themes
Plug 'joshdick/onedark.vim'

"--> Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"--> Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

"--> FZF
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

"--> Comment Code
Plug 'tpope/vim-commentary'

"--> File Explorer
Plug 'scrooloose/NERDTree'

"--> Icons
"Plug 'ryanoasis/vim-devicons'

"--> Indent Guides
Plug 'Yggdroot/indentLine'

"--> Prettier - Formatting Code
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
call plug#end()
