## Nexus-Prover-Test
### Step 1: Remove the Nexus Folder
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
```Bash
curl https://cli.nexus.xyz/ | sh
```
### Step 4: Change the Prover ID
- Ctrl + C to stop CLI
- Edit prover-ID
```Bash
nano ~/.nexus/prover-id
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

-----------------------------------------------------------------------------------------------




