set nocompatible              " be iMproved, required
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
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
"set hlsearch
call plug#begin()
"Plug 'mattn/emmet-vim'
Plug 'davidhalter/jedi-vim'
Plug 'https://tpope.io/vim/sensible.git'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/jiangmiao/auto-pairs'
call plug#end()
let g:user_emmet_leader_key=','
vmap <C-c> :w! ~/.vimbuffer \| !cat ~/.vimbuffer \| clip.exe <CR><CR>
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
set pastetoggle=<C-I>
set showmode
execute pathogen#infect()
call pathogen#helptags()
let NERDTreeShowHidden=1
colorscheme elflord
"run current with python
nnoremap <leader>t :tabnew<CR>
map <C-P> <Esc>:w<CR>:!clear;python3.6 %<CR>
