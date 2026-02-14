export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions rust)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Prompt
prompt_context() {
  emojis=("⚡️" "💀" "🦄" "🌈" "🍻" "🚦" "🌙")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  
  # %c shows only the current folder name (e.g., "fitspo-svc")
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} %c"
}

prompt_dir() {}

# Alias
alias vi=nvim

# Nvim as editor
export SYSTEMD_EDITOR=vi

source ~/.secrets

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Local binaries
export PATH="$PATH:$HOME/.local/bin"

# bun completions
[ -s "/home/isaiah/.bun/_bun" ] && source "/home/isaiah/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# nvm node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
