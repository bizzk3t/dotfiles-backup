set nocompatible

filetype plugin on

set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

colorscheme will

"set guifont=Droid\ Sans\ Mono\ 12

syntax on
set number
set incsearch
set hlsearch
inoremap jj <Esc>
nnoremap JJJJ <NOP>
set autoindent

