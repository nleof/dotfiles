ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    history-substring-search
    kubectl
)

setopt HIST_IGNORE_ALL_DUPS

source $ZSH/oh-my-zsh.sh

REPORTTIME=5
