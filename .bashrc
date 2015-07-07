# display
export DISPLAY=:0

# cursor
export PS1="\[\e[0;33m\]\u@\H\[\e[1;34m\] in \[\e[1;34m\]\[\e[1;36m\][\w]\[\e[0;31m\]\n\\$ \[\e[0m\]"

# update the values of columns and lines if window resize
shopt -s checkwinsize

# color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# external aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# golang
export GOPATH=$HOME/code/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# general aliases
alias code='cd ~/code'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias starwars='telnet towel.blinkenlights.nl'
alias lotr='calendar -f /usr/share/calendar/calendar.lotr -A 365'
alias athena='ssh athena@192.168.0.77'
alias athena.remote='ssh athena@24.229.66.26 -p 6996'
alias open='xdg-open'
alias gopkg='chromium-browser golang.org/pkg/'

#java home
JAVA_HOME=/usr/lib/jvm/java-8-oracle
export JAVA_HOME
PATH=$PATH:$JAVA_HOME
export PATH

#andriod home
export ANDROID_HOME=$HOME/IdeaProjects/android-sdk-linux
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/gabe/.gvm/bin/gvm-init.sh" ]] && source "/home/gabe/.gvm/bin/gvm-init.sh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
