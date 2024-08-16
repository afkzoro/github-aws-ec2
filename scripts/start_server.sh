#!/bin/bash
cd ~/github-aws-ec2
pm2 stop all
pm2 start server.js
