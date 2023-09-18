#!/bin/bash

# Fail fast
set -Eeuo pipefail

# Start noVNC server
./noVNC/utils/novnc_proxy --vnc localhost:5901 &

# Run container script
exec "${START_DIR}/entrypoint.sh"
