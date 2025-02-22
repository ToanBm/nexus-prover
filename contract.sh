#!/bin/bash
# Logo
curl -s https://raw.githubusercontent.com/ToanBm/user-info/main/logo.sh | bash
sleep 3

show() {
    echo -e "\033[1;35m$1\033[0m"
}

# Step 1: Clone and install dependencies:
echo "Clone and install dependencies..."
git clone https://github.com/nexus-xyz/nexus-counter-app.git
cd nexus-counter-app
echo "Install npm..."
npm install

# Step 2: Deploy the smart contract:
# Create .env file for storing private key
cd contracts

echo "Create .env file..."
read -p "Enter your EVM wallet private key (without 0x): " PRIVATE_KEY
cat <<EOF > .env
PRIVATE_KEY=$PRIVATE_KEY
NEXUS_RPC_URL=https://rpc.nexus.xyz/http
EOF

# Step 3: Deploy contracts
# "Waiting before deploying..."
sleep 3
# Yêu cầu nhập số lượng contract cần deploy
read -p "Enter the number of contracts to deploy: " NUMBER_OF_CONTRACTS

# Kiểm tra số lượng có phải là số hợp lệ không
if ! [[ "$NUMBER_OF_CONTRACTS" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a valid number."
  exit 1
fi

# Lặp lệnh deploy
for ((i=1; i<=NUMBER_OF_CONTRACTS; i++)); do
  echo "Deploying contract #$i..."
  npx hardhat run scripts/deploy.ts --network nexus

  # Thời gian chờ ngẫu nhiên từ 3 đến 7 giây
  RANDOM_DELAY=$(shuf -i 3-7 -n 1)  # Chọn số ngẫu nhiên từ 3 đến 7
  echo "Waiting for $RANDOM_DELAY seconds before next deploy..."
  sleep $RANDOM_DELAY
done

echo "Successfully deployed $NUMBER_OF_CONTRACTS smart contracts!"
echo "Thank you!"
