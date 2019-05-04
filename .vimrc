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
Plug 'tpope/vim-commentary'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


""" EMMET """
let g:user_emmet_leader_key='<Tab>'
" let g:user_emmet_install_global=0
" autocmd FileType html,css,javascript.jsx,jsx EmmetInstall
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}


"" Op�ões Globais ""
set showmatch                     " Mostra Matching Pairs


"" Opções de Arquivo ""
set relativenumber                " show relative line number
set wrap                          " line wrapping
set linebreak                     " word wrapping at the line end
set colorcolumn=120               " show vertical line at 120 chars


set autoindent                    " copy indent from previous line
set shiftwidth=2                  " number of spaces to use for indenting
set expandtab                     " convert tabs into spaces
set softtabstop=2                 " number of spaces to use when inserting a tab
" set smartindent "*                " does the right thing in programs (mostly)
" set smarttab "*                   " does the right thing in programs (mostly)

syntax on                         " enable syntax highlighting

set ruler                         " show cursor line and column in status
set showcmd                       " show current command in status line

set backspace=2                   " Desbuga o backspace


""" STYLE """
colorscheme dracula
set guifont=Consolas:h14:cANSI:qDRAFT


""" NERDTree """
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


""" Ctrl + P """
set runtimepath^=~/.vim/bundle/ctrlp.vim   
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

""" indentLine Options """
" Vim
"let g:indentLine_color_term = 239

" GVim
"let g:indentLine_color_gui = '#A4E57E'

" none X terminal
"let g:indentLine_color_tty_light = 7 ' (default: 4)
"let g:indentLine_color_dark = 1 ' (default: 2)

" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'

