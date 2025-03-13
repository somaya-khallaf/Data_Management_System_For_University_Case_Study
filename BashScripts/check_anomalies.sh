#!/bin/bash

# Set Oracle environment variables
export ORACLE_HOME=/opt/oracle/product/23ai/dbhomeFree  # Update this path if different
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=FREE  # Update this if your SID is different

# Variables
LOG_FILE="/var/log/database_errors.log"
DB_USER="C##CsUniversity"
DB_PASSWORD="1234"

# Function to log errors
log_error() {
    echo "$(date): $1" >> $LOG_FILE
}

# Check for anomalies in the database
check_database() {
    # Example: Check for invalid objects in the database
    sqlplus -s $DB_USER/$DB_PASSWORD <<EOF > /tmp/db_check.tmp
    SET HEADING OFF
    SET FEEDBACK OFF
    SELECT object_name, object_type FROM dba_objects WHERE status = 'INVALID';
    EXIT;
EOF

    # Check if there are invalid objects
    if grep -q "no rows selected" /tmp/db_check.tmp; then
        echo "No anomalies found in the database."
    else
        log_error "Database anomalies detected:"
        cat /tmp/db_check.tmp >> $LOG_FILE
    fi

    # Clean up temporary file
    rm -f /tmp/db_check.tmp
}

# Main script execution
check_database
