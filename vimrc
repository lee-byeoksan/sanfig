set nocompatible
set modelines=2
set encoding=utf-8

" General Configuration
syntax on
set background=dark
set backspace=indent,eol,start
set number
set showmode
set gcr=a:blinkon0 " Disable cursor blink
set visualbell " No sound
set autoread

" Tab Configuration
set ts=4
set sw=4
set sts=4
if expand('%:t') != "Makefile"
    set expandtab
endif

" Indent Configuration
set ai
set si
set ci
set cinoptions=(1s

" Search Configuration
set hls
set incsearch
set ignorecase
set smartcase

" Swap File Configuration
set noswapfile
set nobackup
set nowb

" Indentation Configuration
set autoindent
set smartindent
set smarttab

" Activate indent/*.vim
filetype plugin indent on

set list listchars=tab:\ \ ,trail:· " Display tab + trailing spaces

set nowrap
set linebreak

" Scroll Configuration
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Global map leader
let mapleader = " "

" Load and save vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR> | :echo "vimrc has been sourced"<CR>

" Shorten window move
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Autocommands

" cscope
if filereadable("./cscope.out")
    cs add cscope.out
endif

set mouse=
set cursorline

" Filetype-based settings
autocmd FileType erlang setlocal sw=2 ts=2 sts=2
autocmd FileType yaml setlocal sw=2 ts=2 sts=2
autocmd FileType lua setlocal sw=2 ts=2 sts=2
