# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=8000
HISTFILESIZE=9000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
fi

# some more ls aliases
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi
#ignore space lines
export HISTIGNORE=' *'
cd ~
PS1='\W $ '
export PATH=/home/steff007/mongodb/mongodb-linux-x86_64-3.6.5/bin:$PATH
export PATH=mnt/c/all:$PATH

export HISTCONTROL=ignoredups
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# my functions
f ()  {  find -name "$1"; }

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/home/steff007/.sdkman"
# [[ -s "/home/steff007/.sdkman/bin/sdkman-init.sh" ]] && source "/home/steff007/.sdkman/bin/sdkman-init.sh"
export DISPLAY=localhost:0.0
export PYTHONSTARTUP="/mnt/c/projects/py/s.py"
# start tmux auto
if [ -z "$TMUX" ]; then
				    tmux attach -t default || tmux new -s default
	fi
	function take () {
     mkdir "$1" && cd "$1"
 }

export PYTHONPATH=$HOME/lib/python
export PYTHONSTARTUP=/mnt/c/projects/perm/py/bin/starter.py

export HISTIGNORE="pwd:ls:cd"
export PYTHONPATH=/mnt/c/projects/perm/py/bin/:/home/steff007/.local/lib/python3.5/site-packages:$PYTHONPATH
#[[ -s "$HOME/.local/share/marker/marker.sh"  ]] && source "$HOME/.local/share/marker/marker.sh"
export PATH=$PATH:/home/steff007/kotlin/kotlinc/bin
#PROMPT_COMMAND='__git_ps1 "\w" " $ "'
# PS1="[\d \t \u@\h:\w ] $ "
#PROMPT_COMMAND='"\w" " $ "'
##begin here
export PATH="/home/steff007/bin:/home/steff007/.local/bin:mnt/c/all:/home/steff007/mongodb/mongodb-linux-x86_64-3.6.5/bin:mnt/c/all:/home/steff007/mongodb/mongodb-linux-x86_64-3.6.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/mnt/c/Program Files/Microsoft MPI/Bin:/mnt/c/Windows/System32:/mnt/c/Windows:/mnt/c/Windows/System32/wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0:/mnt/c/ProgramData/chocolatey/bin:/mnt/c/Program Files/Microsoft VS Code/bin:/mnt/c/Program Files/nodejs:/mnt/c/Program Files/dotnet:/mnt/c/Program Files/Microsoft SQL Server/130/Tools/Binn:/mnt/c/Program Files/Java/jdk-11.0.1/bin:/mnt/c/Program Files/Notepad++:/mnt/c/Windows/System32/OpenSSH:/mnt/c/Program Files/Git/cmd:/mnt/c/Users/jimst/AppData/Local/Programs/Python/Python37/Scripts:/mnt/c/Users/jimst/AppData/Local/Programs/Python/Python37:/mnt/c/Users/jimst/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/jimst/AppData/Roaming/npm:/mnt/c/Program Files/Java/jdk-11.0.1/bin:/mnt/c/Program Files/Notepad++:/mnt/c/wsl:/mnt/c/Program Files (x86)/Vim/vim81:/mnt/c/Program Files/JetBrains/PyCharm Edu 2018.3/bin:/snap/bin:/home/steff007/.vimpkg/bin:/mnt/c/projects/perm/py/bin:/home/steff007/bin"
EDITOR=vim
function fin()
{
history | grep $1 | sed 's/^\s*[0-9]*\s*//g' | sort | uniq |  vim -
}
export HISTCONTROL=ignoredups:erasedups

# append history entries..
shopt -s histappend

# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export PS1="[\d \t \u:\w ] $ "
