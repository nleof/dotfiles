if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"
alias vim="nvim"
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

direnv hook fish | source
starship init fish | source
