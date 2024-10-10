## Nexus-Prover
### 1. Update packages
```Bash
sudo apt update && sudo apt upgrade -y
```
### 2. Install Dependecies
```Bash
sudo apt install curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip libleveldb-dev  -y
```
### 3. Install Rust
```Bash
sudo curl https://sh.rustup.rs -sSf | sh
```
```Bash
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"
rustc --version
cargo --version
```
### 4. Create Screen 
```Bash
screen -S nexus
```
### 5. Run Prover
```Bash
sudo curl https://cli.nexus.xyz/install.sh | sh
```
## Done!
### Save your Prover ID
```Bash
cat $HOME/.nexus/prover-id
```





