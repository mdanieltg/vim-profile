" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

set nocompatible

set backspace=indent,eol,start

set nobackup
set writebackup

set history=50
set ruler
set showcmd
set incsearch

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Disable Mouse
if has('mouse')
  set mouse=r
endif

if &t_Co > 2
  syntax on
  set hlsearch
endif

set autoindent

set tabstop=4
set shiftwidth=4
set noexpandtab

nnoremap ¿ :NERDTreeToggle<CR>

call plug#begin('~/.vim/plug-ins')

Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

call plug#end()

" vim: ts=2 et
