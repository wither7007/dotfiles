set nocompatible              " be iMproved, required
set path+=**
set wildmenu
" set the runtime path to include Vundle and initialize
set number
set tabstop=2
syntax on
set incsearch
imap jj <Esc>  
map <C-K> <C-W>k
map <C-J> <C-W>j
map <C-D> :put =strftime(\"%c\")
map <C-L> <C-W>l
map <C-H> <C-W>h
noremap <leader>q :q!<cr>
noremap <leader>w :wq<cr>
syntax on
set visualbell
set t_vb=
set noswapfile
set notimeout
set hlsearch
