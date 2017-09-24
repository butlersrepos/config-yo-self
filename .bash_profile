export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export PATH=$PATH:/Applications

alias ls='ls -AlGFh'
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
alias gco='git checkout'
alias servenow="python -m SimpleHTTPServer 8000"

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

# Autocomplete GIT commands
_GIT_PREFIX=/Applications/Xcode.app/Contents/Developer/usr/share/git-core/

# Get GIT branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

npm completion >> ~/.bashrc
source ~/.bashrc

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "
