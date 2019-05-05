" Plug
call plug#begin('~/.vim/plugged') " Plug BEGIN

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx', { 'for': ['jax', 'javascript.jsx'] }
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'jsx', 'javascript', 'html', 'css'] }

Plug 'morhetz/gruvbox'

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



" EMMET
let g:user_emmet_leader_key = '<Tab>'
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
let g:user_emmet_install_global=0
autocmd FileType html,css,javascript,javascript.jsx,jsx EmmetInstall



" COLOR THEME 
colorscheme gruvbox  " Set Gruvbox Theme
set background=dark  " Dark mode for gruvbox
let g:gruvbox_bold = '7'
let g:gruvbox_italic = '1'
let g:gruvbox_termcolors = '256'
let g:gruvbox_contrast_dark = 'soft'

