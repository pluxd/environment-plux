HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

PS1=$'\u250c \u \[\033[1;34m\]\w\[\033[0m\]\n\u2514\u2500\u2192\[\033[0m\] '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias d="cd /home/plux/Dropbox"
alias r="cd /home/plux/Dropbox/Repositories"
alias pagr="/home/plux/Dropbox/Repositories/environment-plux/scripts/static/pushallgitrepos"
alias i="/home/plux/Dropbox/Repositories/environment-plux/scripts/static/.info"
alias ed="ed --prompt=: --verbose"
