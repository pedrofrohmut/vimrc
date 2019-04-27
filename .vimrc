" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax on                         " enable syntax highlighting
set backspace=2                   " Desbuga o backspace

filetype indent on                " load indent settings based on file type
set shiftwidth=2                  " number of spaces to use for indenting
set softtabstop=2                 " number of spaces to use when inserting a tab
set tabstop=2                     " show tabs as 2 spaces
set expandtab                     " convert tabs into spaces
set autoindent                    " copy indent from previous line

set ruler                         " show cursor line and column in status
set showcmd                       " show current command in status line

set number                        " Show Line Number
set colorcolumn=120               " show vertical line at 120 chars

set hidden                        " Allow unsaved buffers to be hidden

colorscheme dracula

set guifont=Consolas:h14:cANSI:qDRAFT

"" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

"" Ctrl + P
set runtimepath^=~/.vim/bundle/ctrlp.vim   

"" indentLine
" Vim
"let g:indentLine_color_term = 239

" GVim
"let g:indentLine_color_gui = '#A4E57E'

" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'