" install vim plugin manager: vim-plug 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" install plugins
call plug#begin()
call plug#end()

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
