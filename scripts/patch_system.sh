#!/bin/bash

# ==========================
# Secure System Patching Script
# ==========================

# Set log directory and create it if it doesn't exist
LOG_DIR="/var/log/patching"
mkdir -p "$LOG_DIR"

# Set timestamp and logfile
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOGFILE="$LOG_DIR/patch_log_$TIMESTAMP.log"

# Start logging
echo "Starting system update at $TIMESTAMP" | tee -a "$LOGFILE"

# Update all packages
dnf update -y | tee -a "$LOGFILE"

# Check if reboot is required
if [ -f /run/reboot-required ]; then
    echo "Reboot is required after patching." | tee -a "$LOGFILE"
else
    echo "No reboot required." | tee -a "$LOGFILE"
fi

# End logging
echo "System update completed at $(date +"%Y-%m-%d_%H-%M-%S")" | tee -a "$LOGFILE"

# (Optional) Uncomment below line if you want automatic reboot after updates
# reboot
