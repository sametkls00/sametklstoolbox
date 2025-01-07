#!/bin/bash

# Add these to .zshrc
cat << 'EOF' >> ~/.zshrc

# Kubernetes aliases
alias k="kubectl"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kl="kubectl logs"
alias ke="kubectl exec -it"
alias kn="kubectl get nodes"
alias kp="kubectl get pods"
alias ks="kubectl get services"

# Network debugging aliases
alias netstat="netstat -tulanp"
alias ports="ss -tulanp"
alias ping="ping -c 5"
alias tracepath="mtr"

# System debugging aliases
alias df="df -h"
alias du="du -h"
alias free="free -h"
alias top="htop"

EOF