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

export PATH="$PATH:/home/steff007/bin:/home/steff007/.local/bin:mnt/c/all:/home/steff007/mongodb/mongodb-linux-x86_64-3.6.5/bin:mnt/c/all:/home/steff007/mongodb/mongodb-linux-x86_64-3.6.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/mnt/c/Program Files/Microsoft MPI/Bin:/mnt/c/Windows/System32:/mnt/c/Windows:/mnt/c/Windows/System32/wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0:/mnt/c/ProgramData/chocolatey/bin:/mnt/c/Program Files/Microsoft VS Code/bin:/mnt/c/Program Files/nodejs:/mnt/c/Program Files/dotnet:/mnt/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/mnt/c/Program Files/Java/jdk-11.0.1/bin:/mnt/c/Program Files/Notepad++:/mnt/c/Windows/System32/OpenSSH:/mnt/c/Program Files/Git/cmd:/mnt/c/Users/jimst/AppData/Local/Programs/Python/Python37/Scripts:/mnt/c/Users/jimst/AppData/Local/Programs/Python/Python37:/mnt/c/Users/jimst/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/jimst/AppData/Roaming/npm:/mnt/c/Program Files/Java/jdk-11.0.1/bin:/mnt/c/Program Files/Notepad++:/mnt/c/wsl:/mnt/c/Program Files (x86)/Vim/vim81:/mnt/c/Program Files/JetBrains/PyCharm Edu 2018.3/bin:/snap/bin:/home/steff007/.vimpkg/bin:/mnt/c/projects/perm/py/bin:/home/steff007/bin"

function fin()
{
history | grep $1 | sed 's/^\s*[0-9]*\s*//g' | sort | uniq |  vim -
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
endmsg

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
git config --global user.email "jimsteffes@outlook.com"
git config --global user.name "Jim Steffes"
git clone https://github.com/wither7007/dotfiles.git
source ~/dotfiles/fun.sh
