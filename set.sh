curl https://raw.githubusercontent.com/wither7007/dotfiles/master/aliases/.bash_aliases > alias
curl https://raw.githubusercontent.com/wither7007/dotfiles/master/vim/.vimrc > .vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
source alias
