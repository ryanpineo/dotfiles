
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" helpers
Plug 'google/vim-maktaba'
Plug 'google/vim-glaive'

" To the pope mobile!
Plug 'tpope/vim-fugitive'       " git wrapper
Plug 'tpope/vim-surround'       " surround text objects with characters
Plug 'tpope/vim-commentary'     " fast commenting
Plug 'tpope/vim-repeat'         " allow plugings to be repeated with .
Plug 'tpope/vim-unimpaired'     " some useful mappings
Plug 'tpope/vim-eunuch'         " unix command sugar
Plug 'tpope/vim-abolish'        " case sensitive substitute
Plug 'tpope/vim-vinegar'        " cleans up netrw interface
Plug 'tpope/vim-endwise'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'altercation/vim-colors-solarized'  " colorscheme

" general purpose fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" fast folding
Plug 'Konfekt/FastFold'

" snippets
Plug 'SirVer/ultisnips'
Plug 'git@github.com:RyanPineo/vim-snippets.git'

" Formatting
Plug 'editorconfig/editorconfig-vim'
Plug 'google/vim-codefmt'

" Languages
Plug 'sheerun/vim-polyglot'

" HTML
Plug 'mattn/emmet-vim'

" Python
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }

call plug#end()
call glaive#Install()
