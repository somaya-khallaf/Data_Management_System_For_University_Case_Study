#!/bin/bash

# Set Oracle environment variables
export ORACLE_SID=FREE
export ORACLE_BASE=/opt/oracle
export ORACLE_HOME=/opt/oracle/product/23ai/dbhomeFree
export PATH=/usr/sbin:$PATH
export PATH=$ORACLE_HOME/bin:$PATH

# Variables
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/opt/oracle/oradata/exports/$DATE"
BACKUP_FILE="oracle_backup_$DATE.dmp"
LOG_FILE="backup_$DATE.log"

# Ensure backup directory exists
mkdir -p $BACKUP_DIR

# Perform the backup using expdp (Data Pump Export)
echo "Starting backup at $(date)" >> $BACKUP_DIR/$LOG_FILE
expdp C##uniData/123 full=y directory=DATA_BACKUP_NEW dumpfile=$BACKUP_FILE logfile=$LOG_FILE

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE" >> $BACKUP_DIR/$LOG_FILE
    echo "Backup log: $BACKUP_DIR/$LOG_FILE" >> $BACKUP_DIR/$LOG_FILE
else
    echo "Backup failed! Check log file: $BACKUP_DIR/$LOG_FILE" >> $BACKUP_DIR/$LOG_FILE
    exit 1
fi

echo "Backup process completed at $(date)" >> $BACKUP_DIR/$LOG_FILE
