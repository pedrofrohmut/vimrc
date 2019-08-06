call plug#begin('~/vimfiles/plugged') " Plug BEGIN

" JavaScript Support
Plug 'pangloss/vim-javascript'

" JSX Support
Plug 'mxw/vim-jsx', { 'for': ['jsx', 'javascript.jsx'] }

" React Snippets
Plug 'epilande/vim-react-snippets'
Plug 'epilande/vim-es2015-snippets'

" Ultisnips
Plug 'SirVer/ultisnips'

" Surrounder for Simple Stuff
Plug 'tpope/vim-surround'

" Commenter
Plug 'tpope/vim-commentary'

" Emmet - HTML JSX snippets
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'jsx', 'javascript', 'typescript', 'ts', 'tsx', 'html', 'css'] }

" NERDTree - File Tree Manager and Viewer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Linter & Formatter
Plug 'w0rp/ale'

" CtrlP - Quick open files
Plug 'ctrlpvim/ctrlp.vim'

" Lots of good Colorschemes for Vim
Plug 'chriskempson/base16-vim'

call plug#end()  " Plug END



filetype plugin on



" VIM
set number
set relativenumber

set wrap
set linebreak

set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2

set backspace=2
set mouse=a

set guifont=Consolas:h14:cANSI:qDRAFT

set encoding=utf-8
set fileformat=unix

set colorcolumn=81,121

colorscheme base16-harmonic-dark



" MY MAPS

" Closer Del
inoremap <C-L> <Del>

" Better Backspace
inoremap <BS> <C-H>

" Insert Space After in Insert_Mode
inoremap <C-Space> <Space><Esc>i

" Insert Space Before in Normal_Mode
nnoremap <Space> i<Space><Esc>

" Insert Line in Normal_Mode
nnoremap <S-Enter> O<Esc>j
nnoremap <C-Enter> o<Esc>k
nmap <S-Enter> O<Esc>j
nmap <C-Enter> o<Esc>k

" Utils
inoremap <F8> <Esc>:set fileformat=unix<CR>
inoremap <F7> <Esc>:ALEFix<CR>
inoremap <F6> <Esc>:w<CR>
nnoremap <F8> :set fnleformat=unnx<CR>
nnoremap <F7> :ALEFnx<CR>
nnoremap <F6> :w<CR>

" Closing Characters
inoremap (<CR> (<CR>)<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap {<CR> {<CR>}<Esc>ko
inoremap ({<CR> ({<CR>})<Esc>ko

" Add , and ; Normal_Mode
nnoremap ; a;<Esc>
nnoremap , a,<Esc>

" Move a Center
nnoremap gg ggzz



" GVIM
au GUIEnter * simalt ~x



" EMMET
autocmd FileType html,css,javascript,javascript.jsx,jsx,cshtml,ts,tsx,typescript EmmetInstall
let g:user_emmet_install_global=0
let g:user_emmet_leader_key = '<C-,>'
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx'
\  }
\}
let g:jsx_ext_required = 0



" Ale 
let g:ale_fixers = { 
\  'javascript': ['prettier', 'eslint'],
\  'javascript.jsx': ['prettier', 'eslint'],
\  'json': ['prettier', 'eslint'],
\  'jsx': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint'],
\  'css': ['prettier'],
\}
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1



" NERDTree  
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
nnoremap <C-B> :NERDTreeToggle<CR>



" NERDCommenter
let g:NERDSpaceDelims = 1



" Compile & Run
autocmd FileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>



" CtrlP
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|git\'
let g:ctrlp_show_hidden = 1
let g:ctrlp_root_markers = ['pom.xml', 'yarn.lock', 'package.json']



" React-Snippets
let g:UltiSnipsExpandTrigger="<C-;>"

