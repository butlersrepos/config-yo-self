export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export ANDROID_HOME=/Library/android-sdk-macosx
export NODE_PATH=/usr/local/lib/node_modules

export PATH=$PATH:/Applications
export PATH=$PATH:$NODE_PATH

alias ls='ls -AlGFh'
alias gs='git status'
alias servenow="python -m SimpleHTTPServer 8000"

# Autocomplete GIT commands
_GIT_PREFIX=/Applications/Xcode.app/Contents/Developer/usr/share/git-core/

# Get GIT branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

npm completion >> ~/.bashrc
source ~/.bashrc

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "
