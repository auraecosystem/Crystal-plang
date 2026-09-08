#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

echo "🚀 Initializing secure Rclone cloud synchronization..."

# Run the sync command. 
# Rclone automatically uses the environment variables passed by GitHub.
rclone sync ./src deploy_target:q-lang --verbose

echo "✅ Sync completed successfully!"
