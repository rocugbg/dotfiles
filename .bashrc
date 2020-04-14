txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # txtred
txtgrn='\e[0;32m' # txtgrn
txtylw='\e[0;33m' # txtylw
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
txtrst='\e[0m'    # Text txtrst

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
function git_status_color {
  local STATUS=`git status 2>&1`
  if [[ "$STATUS" == *'Not a git repository'* ]]
  then
    echo ""
  else
    if [[ "$STATUS" == *'working directory clean'* ]]
    then
      echo -e $txtgrn 
		else
    	if [[ "$STATUS" == *'Untracked files'* ]]
			then
				echo -e $txtred
    	else
				echo -e $txtylw 
    	fi
		fi
  fi
}
PS1=''$txtgrn'\w$(parse_git_branch)'$txtrst'\n$ '

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias q='exit'
alias c='clear'
alias cs='clear;ls'
alias p='cat'
alias pd='pwd'

alias g='git'
alias st='git status'
alias com='git commit -m'
alias clone='git clone'
alias lg='git log'
alias all='git add .'

alias tree='tree -C -I node_modules'   # nice alternative to 'ls'
