# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    extract
    history-substring-search
    tmux
)

source $ZSH/oh-my-zsh.sh


# ENV
#export GOROOT=/usr/lib/go
export GOPATH=$HOME/dev/go
#export GOPKG=$GOPATH/pkg
export GOBIN=$GOPATH/bin
export GOSRC=$GOPATH/src

export PATH=$PATH:~/bin:$GOBIN:/home/alexandre/bin/Sencha/Cmd/5.1.0.26

REPORTTIME=5
