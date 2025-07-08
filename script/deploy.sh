#!/bin/bash

echo "🚀 Starting deployment..."

# Set your target deploy directory
TARGET_DIR="/var/www/html"

# Clean existing files
sudo rm -rf $TARGET_DIR/*

# Copy new frontend files from CodeDeploy location
sudo cp -r /home/ec2-user/deploy/client/build/* $TARGET_DIR/

echo "✅ Deployment finished successfully!"
