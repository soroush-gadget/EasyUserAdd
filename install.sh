#!/bin/bash

# Colors
GREEN="\e[32m"
RESET="\e[0m"

echo -e "${GREEN}🚀 Installing MyUserAdd...${RESET}"

# Download the script
sudo curl -sSL https://raw.githubusercontent.com/soroush-gadget/EasyUserAdd/main/myuseradd -o /usr/local/bin/myuseradd

# Fix Windows line endings (if any)
sudo sed -i 's/\r$//' /usr/local/bin/myuseradd

# Make it executable
sudo chmod +x /usr/local/bin/myuseradd

echo -e "${GREEN}✅ Installation complete! Run 'sudo myuseradd' to start.${RESET}"
