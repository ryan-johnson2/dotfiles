# Custom .bashrc

# Exit if not interactive
case $- in
    *i*) ;;
      *) return;;
esac

# Start tmux
if [[ ! -z $(which tmux) ]]
then
    [[ -z $TMUX ]] && { tmux -2 attach || tmux -2 && exit; }
fi

# Prompt
export PS1="\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;1m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h \[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;39m\][\W]\[$(tput sgr0)\]\[\033[38;5;2m\]\\$\[$(tput sgr0)\] "

# Dir Listsing Colors
export CLICOLOR=true
export LSCOLORS='GxgxFdGdAhhegeBhEhCgBg'

# History Settings
export HISTSIZE=1000
export HISTFILESIZE=5000
shopt -s histappend


# Set extra env vars
export EDITOR='/usr/bin/vim'
export PAGER='/usr/bin/less'

# bash aliases
alias ll='ls -al'
alias lsd='ls -a | grep ^\\.'
alias ps='ps -ef'
alias pss='ps -ef | grep'
alias grep='grep --color=always'
alias tmux='tmux -2'

# SSH aliases
