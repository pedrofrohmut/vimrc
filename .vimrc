
call plug#begin('~/.vim/plugged') " Plug BEGIN

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx', { 'for': ['jax', 'javascript.jsx'] }
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'jsx', 'javascript', 'html', 'css'] }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

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



" MY MAPS
inoremap <C-L> <Del>
inoremap <BS> <C-H>



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



" ConEmu
if !has("gui_running")

    " Color Scheme
    set termencoding=utf-8
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    colorscheme gruvbox

    " Mouse Scroll
    set mouse=a
    set nocompatible

    inoremap <Char-0x07F> <BS>
    nnoremap <Char-0x07F> <BS>

endif



" COLOR THEME 
set background=dark  " Dark mode
set guifont=Consolas:h14:cANSI:qDRAFT
" colorscheme gruvbox  " Set Gruvbox Theme
let g:gruvbox_bold = '7'
let g:gruvbox_italic = '1'
let g:gruvbox_termcolors = '256'
let g:gruvbox_contrast_dark = 'soft'



" NERDTree  
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
nnoremap <C-B> :NERDTreeToggle<CR>



" Compile & Run
autocmd FileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>
