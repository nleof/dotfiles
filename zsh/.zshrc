ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"

DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    history-substring-search
)

setopt HIST_IGNORE_ALL_DUPS

source $ZSH/oh-my-zsh.sh

REPORTTIME=5

alias vi="vim"
alias ydl="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"
