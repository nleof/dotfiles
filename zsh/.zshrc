# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    history-substring-search
    virtualenvwrapper
)

setopt HIST_IGNORE_ALL_DUPS

source $ZSH/oh-my-zsh.sh

REPORTTIME=5


# ENV
export GOPATH=$HOME/dev/go
export GOBIN=$GOPATH/bin
export GOSRC=$GOPATH/src

export NPMBIN=$HOME/.npm-global/bin

export CARGOBIN=$HOME/.cargo/bin

export PATH=$PATH:~/bin:$GOBIN:$NPMBIN:$CARGOBIN:/usr/local/sbin
