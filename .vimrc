set nocompatible

filetype off
let mapleader=","

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set backspace=indent,eol,start

set nowrap
set autoindent

set number

set incsearch
set hlsearch
set ignorecase

set ttyfast

set noerrorbells
set visualbell
set title
set splitbelow
set splitright
set wildchar=<TAB>
set wildmenu
set wildmode=list:longest
set winminheight=0
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"clear last search (,qs)
map <silent> <leader>qs <Esc>:noh<CR>
"enter a newline
map <leader><Enter> o<Esc>

"use jj to escape from insert mode
inoremap jj <Esc>
nnoremap JJJJ <NOP>
"indent block (,]) (,[)
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

command W w
command Wq wq

call pathogen#infect()
syntax on se title
filetype plugin indent on

set grepprg=grep\ -nH\ $*
colorscheme will

