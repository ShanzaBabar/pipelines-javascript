#!/bin/bash
 
# Pull the latest changes from the Git repository
git pull origin main  # or use $BRANCH variable if specified in Jenkins parameter
 
# Install or update Node.js dependencies
npm install
 
# Restart your Node.js application
pm2 restart server.js  # or any other process manager or command you use
