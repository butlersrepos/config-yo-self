export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home
export ANDROID_HOME=/Library/android-sdk-macosx
export NODE_PATH=/usr/local/lib/node_modules

export PATH=$PATH:/Applications
export PATH=$PATH:/Applications/mongodb/bin
export PATH=$PATH:$NODE_PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

alias ls='ls -AlGFh'
alias subl=/Applications/SublimeText2.app/Contents/SharedSupport/bin/subl
alias gs='git status'
alias servenow="python -m SimpleHTTPServer 8000"

# Autocomplete GIT commands
_GIT_PREFIX=/Applications/Xcode.app/Contents/Developer/usr/share/git-core/

if [ -f ${_GIT_PREFIX}/git-completion.bash ]; then
		. ${_GIT_PREFIX}/git-completion.bash
fi

# Get GIT branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/ericbutler/.gvm/bin/gvm-init.sh" ]] && source "/Users/ericbutler/.gvm/bin/gvm-init.sh"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ericbutler/.sdkman"
[[ -s "/Users/ericbutler/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ericbutler/.sdkman/bin/sdkman-init.sh"
