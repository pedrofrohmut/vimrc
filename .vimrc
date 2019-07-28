call plug#begin('~/vimfiles/plugged') " Plug BEGIN

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx', { 'for': ['jsx', 'javascript.jsx'] }
Plug 'justinj/vim-react-snippets'
Plug 'SirVer/ultisnips'

Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'jsx', 'javascript', 'typescript', 'ts', 'tsx', 'html', 'css'] }
Plug 'tpope/vim-surround'
"Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'nathanaelkane/vim-indent-guides'


call plug#end()  " Plug END



filetype plugin on



" VIM
set number                        " show line number (current if relativenumber)
set relativenumber                " show relative line number
set wrap                          " line wrapping
set linebreak                     " word wrapping at the line end
set autoindent                    " copy indent from previous line
set shiftwidth=2                  " number of spaces to use for indenting
set expandtab                     " convert tabs into spaces
set softtabstop=2                 " number of spaces to use when inserting a tab
set backspace=2                   " backspace works better in vim
set guifont=Consolas:h14:cANSI:qDRAFT
set mouse=a

set encoding=utf-8
set fileformat=unix



" Ruler
set colorcolumn=81,120



" MY MAPS

" Closer Del
inoremap <C-L> <Del>

" Better Backspace
inoremap <BS> <C-H>

" Insert Space After in Insert_Mode
inoremap <C-Space> <Space><Esc>i

" Insert Line in Normal_Mode
nnoremap <S-Enter> O<Esc>j
nnoremap <C-Enter> o<Esc>k



" GVIM
au GUIEnter * simalt ~x



" EMMET
autocmd FileType html,css,javascript,javascript.jsx,jsx,cshtml,ts,tsx,typescript EmmetInstall
let g:user_emmet_install_global=0
let g:user_emmet_leader_key = ','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx'
\  }
\}
let g:jsx_ext_required = 0        " Allow JSX in normal JS files



" Ale 
" files fixed with prettier and then eslint
let g:ale_fixers = { 
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint'],
\  'css': ['prettier'],
\}
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'



" TypeScript
let g:typescript_indent_disable = 1



" COLOR THEME 
syntax on                         " Syntax Highlight 
"colorscheme slate                 " Set Slate Theme

set background=dark  " Dark mode
colorscheme gruvbox  " Set Gruvbox Theme
let g:gruvbox_bold = '7'
let g:gruvbox_italic = '1'
let g:gruvbox_termcolors = '256'
let g:gruvbox_contrast_dark = 'soft'



" NERDTree  
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
nnoremap <C-B> :NERDTreeToggle<CR>



" NERDCommenter
let g:NERDSpaceDelims = 1



" Airline
let g:airline_powerline_fonts = 1



" Compile & Run
autocmd FileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>



" Ruler Color
hi ColorColumn ctermbg=grey
hi ColorColumn guibg=grey18



" Tests
let g:indent_guides_enable_on_vim_startup = 0
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4



" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|git\'
let g:ctrlp_show_hidden = 1



" React-Snippets
let g:UltiSnipsExpandTrigger="<C-,>"

