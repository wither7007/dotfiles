alias cl='clip.exe'
alias cls="clear"
alias cm='cd /home/steff007/mongodb/mongodb-linux-x86_64-3.6.5/bin'
alias dw='cd /mnt/c/users/jimst/Downloads'
alias eg='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fp='find `pwd` -name '
alias ga='git add '
alias gac='git add . && git commit -am '
alias gb='git branch '
alias gc='git commit -m '
alias gd='git diff'
alias gl='git log'
alias go='git checkout '
alias gp='git add . && git commit -m "another" && git push #https://wither7007:651dksjim@github.com/wither7007/dotfiles.git'
alias gr='grep'
alias graph='git log --all --decorate --oneline --graph'
alias gs='git status '
alias gx='ga . && gc "initial"'
alias hi='history'
alias ht='hi | sort -rn | cut -c 1-7 --complement | vi -'
alias i3='ipython3'
alias la='ls -A'
alias ll='ls -alF'
alias lotto='curl --silent https://www.mnlottery.com/games/lotto | html2text | sed -e 1,92d | vi -'
alias ls='ls --color=auto'
alias lt='ls -lhrt'
alias mc='cd /mnt/c'
alias md='mkdir'
alias mp='cd /mnt/c/projects'
alias nb='node --inspect-brk'
alias no='node'
alias p3='python3.6'
alias pc='pwd |tr '\''\n'\'' '\'' '\'' | clip.exe'
alias ph='cd /mnt/c/projects/perm/hand'
alias pow='powershell.exe'
alias se='history | grep '
alias vd='vim /mnt/c/all/d.txt'
alias vdr='vim /mnt/c/all/dream.txt'
alias vi='vim '
alias vn='vim -p ~/dotfiles/notes/n.txt ~/dotfiles/notes/pw.txt'
alias y3='youtube-dl -x --audio-format mp3 '
alias y4='youtube-dl -f 18 '
alias ifconfig.me='curl ifconfig.me && printf "\n"' 
alias uht='hi | cut -c 1-7 --complement | sort | uniq |  egrep -v "^git|^fin|vi|which|python|rm|ping|alias|cat|cd|cp|lt|y3|y4|md" | vi -'
alias diffo='git diff master origin/master'
alias mem='ps aux --sort -rss | vim -'
alias cx="chmod +x "
alias ssp="python3 -m http.server"
alias py="python"
