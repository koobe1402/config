if [ "$TERM" = xterm ]; then TERM=xterm-256color; fi

bold=$(tput bold)
black=$(tput setaf 0)
reset=$(tput sgr0)
PS1='\[$black\]\[$bold\]${PWD#"${PWD%/*/*}/"}\[$reset\] ~> '

bind 'set completion-ignore-case on'

export CLICOLOR=1
export LSCOLORS='ExGxFxDxCxDxDxhbhdacEc'

export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

export HISTFILESIZE=
export HISTSIZE=

if ls --color &> /dev/null ; then
    alias l='ls --color -CF'
    alias ls='ls --color -G'
    alias ll='ls --color -alF'
    alias la='ls --color -Ah'
else
    alias l='ls -G -CF'
    alias ls='ls -G'
    alias ll='ls -G -alF'
    alias la='ls -G -Ah'
fi

alias df='df -H'
alias du='du -ch'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias refresh_dns='sudo killall mDNSResponder'
alias repos='cd /Users/koobe/Documents/repos; ls -al'

alias jump='ssh -i /Users/koobe/.ssh/id_rsa root@192.168.1.217'
alias kvm='ssh -i /Users/koobe/.ssh/id_rsa root@192.168.1.100'

export HISTCONTROL=ignoreboth:erasedups

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
