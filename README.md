# Sametklstoolbox

A comprehensive network and Kubernetes debugging toolkit based on Alpine Linux, designed for troubleshooting in container environments.

## 🛠 Available Tools

### Network Analysis Tools
- **tcpdump**: Packet analyzer
- **iftop**: Bandwidth monitoring
- **iperf3**: Network performance testing
- **mtr**: Network diagnostic tool
- **nmap/nping**: Port scanning and network discovery
- **netcat-openbsd**: TCP/UDP connection testing
- **traceroute**: Network path analysis
- **ping**: ICMP testing
- **drill**: DNS lookup tool
- **curl**: HTTP request tool
- **httpie**: Modern HTTP client
- **socat**: Multipurpose relay
- **ngrep**: Network grep
- **dhcping**: DHCP testing
- **ethtool**: Network interface management
- **conntrack-tools**: Connection tracking
- **bind-tools**: DNS tools
- **websocat**: WebSocket client

### Kubernetes & Container Tools
- **kubectl**: Kubernetes command-line tool
- **k9s**: Terminal-based Kubernetes UI
- **kubectx**: Kubernetes context switching

### System Monitoring & Debug Tools
- **htop**: System resource monitor
- **strace**: System call debugger
- **ltrace**: Library call debugger
- **sysstat**: System performance tools
- **fio**: I/O benchmarking
- **nethogs**: Per-process network bandwidth monitor
- **busybox-extras**: Additional system utilities

### Database Client Tools
- **mysql-client**: MySQL/MariaDB client
- **postgresql-client**: PostgreSQL client
- **redis**: Redis client

### Shell & Utility Tools
- **zsh**: Z Shell with Oh My Zsh
  - zsh-autosuggestions plugin
  - zsh-syntax-highlighting plugin
- **vim**: Text editor
- **git**: Version control
- **jq**: JSON processor
- **yq**: YAML processor
- **grpcurl**: gRPC testing tool

## 🚀 Quick Start

### Using Docker
```bash
docker run -it sametkeles/sametklstoolbox:latest
```

### Using in Kubernetes
```bash
# Create a debugging pod
kubectl run network-debug --image=sametkeles/sametklstoolbox:latest -n default -- sleep infinity

# Connect to the pod
kubectl exec -it network-debug -- zsh
```

### Using with Extended Privileges
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: network-toolbox
spec:
  containers:
  - name: network-tools
    image: sametkeles/sametklstoolbox:latest
    stdin: true
    tty: true
    securityContext:
      capabilities:
        add: ["NET_ADMIN", "SYS_ADMIN"]
```

## 🔧 Common Use Cases

### Network Debugging
```bash
# Capture network traffic
tcpdump -i any

# Monitor bandwidth usage
iftop

# Test network connectivity
ping kubernetes.default
mtr google.com
```

### Kubernetes Troubleshooting
```bash
# Interactive Kubernetes UI
k9s

# Check DNS resolution
drill kubernetes.default.svc.cluster.local

# Test service connectivity
curl -v http://service-name.namespace
```

### Performance Analysis
```bash
# Monitor system resources
htop

# Network performance test
iperf3 -s  # Server mode
iperf3 -c <server-ip>  # Client mode
```

## 🔗 Links

- [Docker Hub](https://hub.docker.com/r/sametkeles/sametklstoolbox)
- [GitHub Repository](https://github.com/sametkls00/sametklstoolbox)