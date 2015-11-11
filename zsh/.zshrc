# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    extract
    history-substring-search
)

source $ZSH/oh-my-zsh.sh


# ENV
export GOPATH=$HOME/dev/go
export GOBIN=$GOPATH/bin
export GOSRC=$GOPATH/src

export PATH=$PATH:~/bin:$GOBIN

REPORTTIME=5
