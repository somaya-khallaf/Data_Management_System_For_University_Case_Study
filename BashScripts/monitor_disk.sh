#!/bin/bash

# Variables
THRESHOLD=75
LOG_FILE="/var/log/disk_space_alert.log"
CURRENT_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')

# Check if current usage exceeds threshold
if [ "$CURRENT_USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk space is above $THRESHOLD%. Current usage: $CURRENT_USAGE% - $(date)" >> $LOG_FILE
else
    echo "Disk space is within acceptable limits."
fi
