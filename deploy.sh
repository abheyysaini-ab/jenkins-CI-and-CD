#!/bin/bash
set -e

echo "Starting deployment..."

# Pull latest code (optional if Jenkins already checks out)
# git pull origin main

# Stop the existing app
pm2 stop myapp || true

# Start app using pm2
pm2 start app.js --name myapp

echo "Deployment complete ✅"
