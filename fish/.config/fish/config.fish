if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias l="ls -alh"
alias cat="bat --theme='Solarized (light)'"
alias vi="nvim"
alias vim="nvim"
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

set fish_greeting

direnv hook fish | source
starship init fish | source
