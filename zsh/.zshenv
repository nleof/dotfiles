export LOCALBIN="$HOME/.local/bin:$HOME/bin"

export PATH=$PATH:$LOCALBIN

export SSH_AUTH_SOCK="/run/user/${UID}/ssh-agent.socket"

source $HOME/.zshenv_private
