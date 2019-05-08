" Plug
call plug#begin('~/.vim/plugged') " Plug BEGIN

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx', { 'for': ['jax', 'javascript.jsx'] }
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'jsx', 'javascript', 'html', 'css'] }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'

call plug#end()  " Plug END



" VIM
set number                        " show line number (current if relativenumber)
set relativenumber                " show relative line number
set wrap                          " line wrapping
set linebreak                     " word wrapping at the line end
set colorcolumn=80                " show vertical line at 120 chars
syntax on                         " Syntax Highlight 
set autoindent                    " copy indent from previous line
set shiftwidth=2                  " number of spaces to use for indenting
set expandtab                     " convert tabs into spaces
set softtabstop=2                 " number of spaces to use when inserting a tab
set backspace=2                   " backspace works better in vim
set mouse=a



" EMMET
autocmd FileType html,css,javascript,javascript.jsx,jsx EmmetInstall
let g:user_emmet_leader_key = ','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx'
\  }
\}
let g:user_emmet_install_global=0
let g:jsx_ext_required = 0        " Allow JSX in normal JS files



" COLOR THEME 
colorscheme dracula  " Set Dracula Theme
set background=dark  " Dark mode
set guifont=Consolas:h14:cANSI:qDRAFT



""" NERDTree """ 
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

