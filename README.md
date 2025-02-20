## Nexus-Prover-Test
- Create an account at: app.nexus.xyz
- Follow the account linking instructions
- Your contributions will earn NEX Points
- Track your progress on the leaderboard
- Manage all your nodes in one place

### Step 1: Remove Old Nexus Node
```Bash
docker ps | grep nexus
```
```Bash
docker ps -a | grep nexus
```
```Bash
systemctl status nexus
```
```Bash
sudo systemctl stop nexus
sudo rm -f /etc/systemd/system/nexus.service
```
```Bash
sudo systemctl daemon-reload
sudo systemctl reset-failed
```
```Bash
rm -rf ~/.nexus
```
### Step 2: Update System Packages
```Bash
sudo apt update && sudo apt upgrade -y
```
```Bash
sudo apt install build-essential pkg-config libssl-dev git-all -y
```
### Step 3: Install Nexus CLI
- Install Rust:
```Bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
- Add the riscv32i target:
```Bash
rustup target add riscv32i-unknown-none-elf
```
- Install Script
```Bash
curl https://cli.nexus.xyz/ | sh
```
## *** Tới đây hỏi tiếp!!!!!

### Step 4: Change the Prover ID
- Ctrl + C to stop CLI
- Edit prover-ID
```Bash
nano ~/.nexus/node-id
```
### Step 5: Run Nexus in a Screen Session
```Bash
screen -S nexus 
```
```Bash
curl https://cli.nexus.xyz/ | sh
```
- Press Ctrl + A, then D exit
- To check your node
```Bash
screen -r nexus 
```
### Fix RAM (Out of Memory Killer)
```Bash
sudo dd if=/dev/zero of=/swapfile bs=1M count=10240 status=progress && \
sudo chmod 600 /swapfile && \
sudo mkswap /swapfile && \
sudo swapon /swapfile && \
grep -q '/swapfile' /etc/fstab || echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && \
sudo sysctl vm.swappiness=10 && \
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
```

-----------------------------------------------------------------------------------------------




