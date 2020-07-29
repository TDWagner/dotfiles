# bash aliases
alias ll="ls -al"
alias yi="sudo yum install"
alias ai="sudo apt-get install"
alias brc=". ~/.bashrc"

# git shortcuts
alias gc="git commit -m"
alias ga="git add ."
alias gap="git add --patch"
alias gai="git add --interactive"
alias gdc="git diff --cached"
alias gl="git log"
alias gs="git status"
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'

# terminal annoyances
stty -ixon                     # turn off flow control
setterm -bfreq 0               # disable terminal beep

# default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# path manipulation
PATH=$PATH:~/AppData/Local/Programs/Python
export PATH

# prompt style
. ~/.bash_prompt.sh

