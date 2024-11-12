" Ryan Pineo's .vimrc file
" Inspired by Gary Bernhardt's .vimrc
" vim:set ts=2 sts=2 sw=2 expandtab:

source ~/.config/nvim/plugins.vim
runtime macros/matchit.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden
" show line numbers
set number
set autoindent
" always show the status line
set laststatus=2

" start of default statusline
set statusline=%f\ %h%w%m%r\ 
" NOTE: preceding line has a trailing space character
" COC statusline
set statusline+=%{coc#status()}
" end of default statusline (with ruler)
set statusline+=%=%(%l,%c%V\ %=\ %P%)

let mapleader=" "
set backspace=indent,eol,start
set wildmode=longest,list
" enable tab completion for buffers/files/etc
set wildmenu
filetype plugin indent on
" don't store any backups
set nobackup
set nowritebackup
set noswapfile
" if a file is changed outside vim then reload it without asking
set autoread
set formatoptions=crqjl
set scrolloff=3
set undofile
set undodir=$HOME/.config/nvim/tmp/undo
silent! call system('mkdir -p ' . &undodir)
set list
set listchars=tab:→\ ,trail:·,extends:↷,precedes:↶
set softtabstop=4 tabstop=4 expandtab shiftwidth=4


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast move around windows
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

" open a file explorer in the current file's directory
nnoremap <leader>E :Explore<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=light
colorscheme solarized


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCHING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make searches case sensitive only if they contain upper-case characters
set ignorecase smartcase
set incsearch
set grepprg=rg\ --vimgrep\ --smart-case


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
" inoremap <expr><cr>  pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" EMMET
let g:user_emmet_leader_key='<c-e>'

" FZF
nnoremap <leader>f :FZF!<cr>

" JSX
let g:jsx_ext_required=0

" Language Server Client
" let g:LanguageClient_diagnosticsEnable = 0
" let g:LanguageClient_serverCommands = {
"     \ 'python': ['pyls'],
"     \ }
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

" ULTISNIPS
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
