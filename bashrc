# bash aliases
alias ll="ls -al"
alias yi="sudo yum install"
alias ai="sudo apt-get install"

# git shortcuts
alias gc="git commit -m"
alias ga="git add ."
alias gap="git add --patch"
alias gai="git add --interactive"
alias gdc="git diff --cached"
alias gl="git log"
alias gs="git status"
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'

# Terminal annoyances
stty -ixon                     # turn off flow control
setterm -bfreq 0               # disable terminal beep

# Path manipulation
PATH=$PATH:~/AppData/Local/Programs/Python
export PATH

# Prompt Style
PS1='\[\033]0;\u@\h: ${PWD//[^[:ascii:]]/?}\007\]' # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change to green
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
PS1="$PS1"'\w'                 # current working directory
parse_git_branch() {           # add git branch to prompt
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="$PS1"'\[\033[36m\]'       # change color to cyan
PS1="$PS1"' $(parse_git_branch)' # git branch
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $

