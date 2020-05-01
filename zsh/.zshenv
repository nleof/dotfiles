export EDITOR=vim

export LOCALBIN="$HOME/.local/bin:$HOME/bin"
export GOBIN="$HOME/go/bin"
export PATH="$PATH:$LOCALBIN:$GOBIN"

export SSH_AUTH_SOCK="/run/user/${UID}/ssh-agent.socket"

source $HOME/.zshenv_private
