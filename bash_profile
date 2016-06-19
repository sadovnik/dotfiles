source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[`tput setaf 255`\]$PWD\[`tput sgr0`\]$(__git_ps1 " (%s)") $ '
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias l="ls -la"
alias c="clear"

