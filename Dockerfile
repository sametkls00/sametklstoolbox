FROM alpine:3.19

# Configure repositories and initial setup
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.19/main" > /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/v3.19/community" >> /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# Install base packages
RUN apk update && apk upgrade && apk add --no-cache \
    apache2-utils \
    bash \
    bind-tools \
    busybox-extras \
    conntrack-tools \
    curl \
    dhcping \
    drill \
    ethtool \
    file \
    fio \
    git \
    grpcurl \
    htop \
    httpie \
    iftop \
    iperf3 \
    iputils \
    jq \
    k9s \
    kubectl \
    kubectx \
    liboping \
    ltrace \
    mtr \
    mysql-client \
    net-snmp-tools \
    netcat-openbsd \
    nethogs \
    net-tools \
    nftables \
    ngrep \
    nmap \
    nmap-nping \
    nmap-scripts \
    openssl \
    openssh \
    postgresql-client \
    py3-pip \
    py3-setuptools \
    redis \
    scapy \
    socat \
    speedtest-cli \
    strace \
    sysstat \
    tcpdump \
    tcptraceroute \
    tshark \
    util-linux \
    vim \
    websocat \
    wget \
    yq \
    zsh

# Install Oh My Zsh and plugins
RUN sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Set up workspace
WORKDIR /root
ENV HOSTNAME sametklstoolbox

# Copy configuration files
COPY zshrc .zshrc
COPY motd motd

# Set permissions
RUN chmod -R g=u /root
RUN chown root:root /usr/bin/dumpcap

# Default command
CMD ["zsh"]