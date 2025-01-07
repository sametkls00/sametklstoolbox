#!/bin/bash

# Install additional tools that might be needed
install_additional_tools() {
    apk add --no-cache \
        iptraf-ng \
        nethogs \
        lnav \
        htop
}

# Install kubectl plugins
install_kubectl_plugins() {
    # Install krew
    curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew-linux_amd64.tar.gz"
    tar zxvf krew-linux_amd64.tar.gz
    ./krew-linux_amd64 install krew
    
    # Install useful plugins
    kubectl krew install ctx
    kubectl krew install ns
    kubectl krew install stern
}

# Main
main() {
    install_additional_tools
    install_kubectl_plugins
}

main