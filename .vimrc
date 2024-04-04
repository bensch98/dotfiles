" activate syntax hl
syntax on

" color of syntax hl
set t_Co=256
colo skrrt

set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set rulerformat=%18(%=\%l,%c\|0x%04B\|%p%%%)
set cursorline
set backspace=indent
set clipboard=unnamed " use system clipboard
vnoremap <C-c> "*y
inoremap <C-c> <Esc>

" *** file specific settings ***
" .asm 
autocmd BufNew,BufRead *.asm set ft=nasm

" .lst
autocmd BufNew,BufRead *.lst set syntax=off

" Makefile
au BufNewFile,BufRead,BufReadPost Makefile set noexpandtab

" Go
au BufNewFile,BufRead,BufReadPost *.go set noexpandtab

" Rust
au BufNewFile,BufRead,BufReadPost *.rs setlocal tabstop=4 shiftwidth=4 expandtab
