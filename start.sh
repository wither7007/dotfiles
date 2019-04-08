curl https://raw.githubusercontent.com/wither7007/dotfiles/master/vim/.vimrc
curl https://raw.githubusercontent.com/wither7007/dotfiles/master/vim/.vimrc > .vimrc
curl https://raw.githubusercontent.com/wither7007/dotfiles/master/aliases/.bash_aliases > alias
source alias
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c "PlugInstall"
