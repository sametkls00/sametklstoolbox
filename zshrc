# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
  kubectl
  docker
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Aliases
alias k='kubectl'
alias d='docker'
alias g='git'
alias ll='ls -la'

# Show MOTD
cat /root/motd

# Kubectl autocomplete
source <(kubectl completion zsh)