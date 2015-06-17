# Python
alias cleanpy='find . -name "*.pyc" -exec rm {} \;'
alias pydoc='python -m pydoc'
alias www='python -m SimpleHTTPServer'

# Git
alias greset='git fetch --all; git reset --hard origin/master'
alias gs='git status'
alias ga='git add --all .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'

# ls
colorflag="-G"
alias ls="command ls ${colorflag}"
alias ll="ls -lF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories

# Terminal assist
alias ip='dig +short'
alias psg='ps aux | grep $(echo $1 | sed "s/^\(.\)/[\1]/g")'

# Misc
alias mvim='mvim -p'
