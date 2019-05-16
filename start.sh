cd ~
curl https://raw.githubusercontent.com/wither7007/dotfiles/master/vim/.vimrc > .vimrc
curl https://raw.githubusercontent.com/wither7007/dotfiles/master/aliases/.bash_aliases > .bash_aliases	
source .bash_aliases
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c "PlugInstall"


function fin()
{
history | grep $1 | sed 's/^\s*[0-9]*\s*//g' | sort | uniq |  vim -
}
