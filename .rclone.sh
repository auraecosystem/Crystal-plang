#!/bin/bash

# Exit immediately if any command fails
set -e

# 1. Recreate the Rclone config file dynamically using environment variables
mkdir -p ~/.config/rclone
cat << EOF > ~/.config/rclone/rclone.conf
[my-cloud-remote]
type = ${RCLONE_REMOTE_TYPE}
provider = ${RCLONE_REMOTE_PROVIDER}
access_key_id = ${RCLONE_AWS_ACCESS_KEY_ID}
secret_access_key = ${RCLONE_AWS_SECRET_ACCESS_KEY}
endpoint = ${RCLONE_REMOTE_ENDPOINT}
EOF

# 2. Run your Rclone command (e.g., syncing your project code to your cloud storage)
# Replace 'my-bucket-name' with your actual target cloud folder or bucket
rclone sync ./src my-cloud-remote:q-lang --verbose

