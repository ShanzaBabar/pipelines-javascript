#!/bin/bash
 
echo "Current directory: $(pwd)"
 
# Pull the latest changes from the Git repository

git pull origin main  # or use $BRANCH variable if specified in Jenkins parameter

echo "Git pull complete"
 
# Install or update Node.js dependencies

npm install

echo "npm install complete"
 
# Restart your Node.js application

pm2 restart server.js  # or any other process manager or command you use

echo "Application restarted"

