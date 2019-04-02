" Plug 'davidhalter/jedi-vim'
" set the runtime path to include Vundle and initialize
"Plug 'mattn/emmet-vim'
"run current with python
"set hlsearch
"set search highlight
"set toggle space
call plug#begin()
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://tpope.io/vim/sensible.git'
Plug 'https://github.com/scrooloose/nerdtree'
call plug#end()
colorscheme elflord
imap jj <Esc>  
let NERDTreeShowHidden=1
let g:user_emmet_leader_key=','
map <C-D> :put =strftime(\"%c\")
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-P> <Esc>:w<CR>:!clear;python3.6 %<CR>
map <c-'> `
map gd :bd<cr> 
map gn :bn<cr>
map gp :bp<cr>
nnoremap <leader>t :tabnew<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
noremap <Leader>P "+p
noremap <Leader>Y "+y
noremap <Leader>p "*p
noremap <Leader>y "*y
noremap <leader>c 0v$hy
noremap <leader>q :q!<cr>
noremap <leader>w :wq<cr>
set hlsearch
set incsearch
set nocompatible              " be iMproved, required
set noswapfile
set notimeout
set number
set pastetoggle=<C-I>
set path+=**
set showmode
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set t_vb=
set tabstop=2
set visualbell
set wildmenu
syntax on
syntax on
vmap <C-c> :w! ~/.vimbuffer \| !cat ~/.vimbuffer \| clip.exe <CR><CR>
