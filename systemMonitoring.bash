#!/bin/bash

# System Monitoring

log_file="system_monitoring.log"

while true; do
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    cpu_usage=$(top -bn 1 | awk '/%Cpu/{print $2}')
    memory_usage=$(free -m | awk '/Mem/{print $3}')
    echo "$timestamp - CPU: $cpu_usage%, Memory: $memory_usage MB" >> "$log_file"
    sleep 5
done
