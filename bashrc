# Custom .bashrc

# Exit if not interactive
case $- in
    *i*) ;;
      *) return;;
esac

# Prompt
export PS1="\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;1m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;39m\][\W]\[$(tput sgr0)\]\[\033[38;5;2m\]\\$\[$(tput sgr0)\] "

# Dir Listsing Colors
export CLICOLOR=true
# BSD/Mac Settings
# export LSCOLORS='GxgxFdGdAhhegeBhEhCgBg'
# Linux Settings
export LS_COLORS='di=1;36:ln=36:so=1;35;43:pi=1;36;43:ex=1;30;47:bd=37;44:cd=36;44:su=1;31;47:sg=1;34;47:tw=1;32;46:ow=1;31;46'

# History Settings
export HISTSIZE=1000
export HISTFILESIZE=5000
shopt -s histappend


# Set extra env vars
export EDITOR='/usr/bin/vim'
export PAGER='/usr/bin/less'

# bash aliases
alias ls='ls --color=always'
alias ll='ls -al'
alias lsd='ls -al | \grep \\.[a-z]*'
alias ps='ps -ef'
alias pss='ps -ef | grep'
alias grep='grep --color=always'
alias tmux='tmux -2'

# use bash_aliases if present
if [ -f ~/.bash_aliases ]
then
    source ~/.bash_aliases
fi
