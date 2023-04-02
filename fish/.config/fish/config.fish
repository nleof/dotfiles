if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias l="ls -alh"
alias vi="nvim"
alias vim="nvim"
alias vimdiff="nvim -d"
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias cat="bat"

set fish_greeting

function fish_hybrid_key_bindings --description \
"Vi-style bindings that inherit emacs-style bindings in all modes"
    for mode in default insert visual
        fish_default_key_bindings -M $mode
    end
    fish_vi_key_bindings --no-erase
end
set -g fish_key_bindings fish_hybrid_key_bindings

set -x DIRENV_LOG_FORMAT ""
direnv hook fish | source
starship init fish | source
