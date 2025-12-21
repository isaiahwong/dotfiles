export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions rust)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Alias
alias vi=nvim

source ~/.secrets

# Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
