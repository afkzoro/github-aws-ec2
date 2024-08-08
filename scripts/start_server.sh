#!/bin/bash
cd ~/simple-web-server
pm2 stop all
pm2 start server.js
