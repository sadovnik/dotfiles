if [ -d /usr/local/etc/bash_completion.d ]; then
    source /usr/local/etc/bash_completion.d/git-prompt.sh
    source /usr/local/etc/bash_completion.d/git-completion.bash
    source /usr/local/etc/bash_completion.d/git-flow-completion.bash
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true

export PS1='\[`tput setaf 325`\]$PWD\[`tput sgr0`\]$(__git_ps1 " (%s)") $ '
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias l="ls -la"
alias c="clear"
eval "$(thefuck --alias jj)"
eval "$(rbenv init -)"
