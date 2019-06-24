cd ~
curl https://raw.githubusercontent.com/wither7007/dotfiles/master/vim/.vimrc > .vimrc
curl https://raw.githubusercontent.com/wither7007/dotfiles/master/aliases/.bash_aliases > .bash_aliases	
source .bash_aliases
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c "PlugInstall"

cat >> ~/.bashrc<<'endmsg'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
		 
}

function fin()
{
history | grep $1 | sed 's/^\s*[0-9]*\s*//g' | sort | uniq |  vim -
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
endmsg
