
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

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

Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/neocomplete.vim'   " generic autocompletion
Plug 'altercation/vim-colors-solarized'  " colorscheme
Plug 'w0rp/ale'  " lint engine

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

" Ansible
Plug 'chase/vim-ansible-yaml'

" CoffeeScript
Plug 'kchmck/vim-coffee-script'

" Elixir
Plug 'elixir-lang/vim-elixir'

" Go
Plug 'fatih/vim-go'

" HTML
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Markdown
Plug 'suan/vim-instant-markdown'

" Python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }  " python autocompletion
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }  " better indents

" Swift
Plug 'keith/swift.vim'

" Terraform
Plug 'hashivim/vim-terraform'

" Typescript
Plug 'leafgarland/typescript-vim'  " better syntax
"Plug 'Quramy/tsuquyomi' " omni completion

" YAML
Plug 'stephpy/vim-yaml'

call plug#end()
call glaive#Install()
