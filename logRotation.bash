#!/bin/bash

# Log Rotation

log_dir="/var/log/myapp"
max_logs=5

# Check if the log directory exists
if [ ! -d "$log_dir" ]; then
    echo "Log directory not found."
    exit 1
fi

# Compress and archive old log files
for ((i=$max_logs; i>1; i--)); do
    current_log="$log_dir/myapp.log.$i"
    previous_log="$log_dir/myapp.log.$((i-1))"
    
    if [ -e "$current_log" ]; then
        mv "$current_log" "$previous_log"
        gzip "$previous_log"
    fi
done

# Rename and compress the current log
if [ -e "$log_dir/myapp.log" ]; then
    mv "$log_dir/myapp.log" "$log_dir/myapp.log.1"
    gzip "$log_dir/myapp.log.1"
fi

# Create a new log file
touch "$log_dir/myapp.log"

echo "Log rotation completed."
