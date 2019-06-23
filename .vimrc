call plug#begin('~/.vim/plugged') " Plug BEGIN

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx', { 'for': ['jax', 'javascript.jsx'] }
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'jsx', 'javascript', 'html', 'css'] }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'

call plug#end()  " Plug END



" VIM
set number                        " show line number (current if relativenumber)
set relativenumber                " show relative line number
set wrap                          " line wrapping
set linebreak                     " word wrapping at the line end
syntax on                         " Syntax Highlight 
set autoindent                    " copy indent from previous line
set shiftwidth=2                  " number of spaces to use for indenting
set expandtab                     " convert tabs into spaces
set softtabstop=2                 " number of spaces to use when inserting a tab
set backspace=2                   " backspace works better in vim
set guifont=Consolas:h14:cANSI:qDRAFT
set mouse=a
set encoding=utf-8



" Ruler
set colorcolumn=81,120



" MY MAPS
inoremap <C-L> <Del>
inoremap <BS> <C-H>
inoremap <C-Space> <Esc>
nnoremap <C-Space> <Esc>



" GVIM
au GUIEnter * simalt ~x



" EMMET
autocmd FileType html,css,javascript,javascript.jsx,jsx,cshtml EmmetInstall
let g:user_emmet_install_global=0
let g:user_emmet_leader_key = ','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx'
\  }
\}
let g:jsx_ext_required = 0        " Allow JSX in normal JS files



" COLOR THEME 
" colorscheme slate
set background=dark  " Dark mode
colorscheme gruvbox  " Set Gruvbox Theme
let g:gruvbox_bold = '7'
let g:gruvbox_italic = '1'
let g:gruvbox_termcolors = '256'
let g:gruvbox_contrast_dark = 'soft'



" NERDTree  
" autocmd StdinReadPre * let s:std_in=1 
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
nnoremap <C-B> :NERDTreeToggle<CR>



" Compile & Run
autocmd FileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>



" Ruler Color
hi ColorColumn ctermbg=grey
hi ColorColumn guibg=grey18

