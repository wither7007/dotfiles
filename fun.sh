parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
		 
}
function fin()
{
history | grep $1 | sed 's/^\s*[0-9]*\s*//g' | sort | uniq |  vim -
}
