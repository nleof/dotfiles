export LOCALBIN=$HOME/.local/bin:$HOME/bin
export GOPATH=$HOME/dev/go
export GOBIN=$GOPATH/bin:/usr/local/go/bin
export GOSRC=$GOPATH/src

export NPMBIN=$HOME/.npm-global/bin:./node_modules/.bin

export CARGOBIN=$HOME/.cargo/bin

export PATH=$PATH:$LOCALBIN:$GOBIN:$NPMBIN:$CARGOBIN
