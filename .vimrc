"---------------------------------------
" Bundle(NeoBundle) configuration
"---------------------------------------
set nocompatible
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

" List Bundle plugins here
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'DirDiff.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'QuickBuf'
NeoBundle 'google.vim'
NeoBundle 'cocopon/lightline-hybrid.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'tomasr/molokai'


filetype plugin indent on
syntax enable

"---------------------------------------
" ColorScheme
"---------------------------------------
set t_Co=256
set background=dark
colorscheme hybrid
let g:lightline = {}
let g:lightline.colorscheme = 'default'

"---------------------------------------
" Run as VIM (no-compatible)
"---------------------------------------
set nocompatible

"---------------------------------------
" Display configuration
"---------------------------------------
set number
set cursorline
set wrap
set list
set listchars=tab:>-,trail:-

set cmdheight=2
set laststatus=2
set showcmd
set display=lastline

"---------------------------------------
" Mouse configuration
"---------------------------------------
set mouse=a

"---------------------------------------
" Editor configuration
"---------------------------------------
" No backup, no swap file
set nobackup
set noswapfile

" enable to open other file in edit
set hidden

" wildmode(complement)
set wildmenu
set wildmode=list:longest
set wildignore+=*.o,*.obj,*.pyc,*.DS_Store,*.db

" no beep
set vb t_vb=

" timeout
set notimeout
set ttimeout
set timeoutlen=200

" Tab behavior
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" enable to delete newline
set backspace=2

" Copy&Paste
set clipboard=unnamed

" Search behavior
set ignorecase
set smartcase

" change current directory when changing buffer
au BufEnter * execute ":lcd " . expand("%:p:h")

"---------------------------------------
" Ctags
"---------------------------------------
set tags+=tags;~/

"---------------------------------------
" Keyboard Remap
"---------------------------------------

" Editor
nnoremap Y y$

" QuickBuf
let g:qb_hotkey = "<F3>"

" NERDTree
noremap <F9> :NERDTreeCWD<CR>

" Gtags
nmap <Leader>g [GTAGS]
nnoremap [GTAGS]g :Gtags 
nnoremap [GTAGS]. :GtagsCursor<CR>
nnoremap [GTAGS]_ :Gtags -r <C-r><C-w><CR>
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

