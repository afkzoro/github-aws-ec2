#!/bin/bash
echo "Installing Node.js..."
if ! command -v nvm &> /dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
fi
nvm install node

echo "Installing PM2..."
if ! command -v pm2 &> /dev/null; then
    npm install -g pm2
fi

cd ~/github-aws-ec2
npm install