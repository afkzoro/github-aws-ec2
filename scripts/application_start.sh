#!/bin/bash
sudo chmode -R 777 /home/ubuntu/github-aws-ec2
cd /home/ubuntu/github-aws-ec2
npm install
sudo pm2 start server.js
