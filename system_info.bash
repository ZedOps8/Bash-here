#!/bin/bash

# System Information Script

echo "System Information:"
echo "-------------------"

# Display CPU information
cpu_info=$(lscpu | grep "Model name:")
echo "CPU: $cpu_info"

# Display Memory information
mem_info=$(free -h | grep "Mem:")
echo "Memory: $mem_info"

# Display Disk usage
disk_info=$(df -h / | tail -1)
echo "Disk Usage: $disk_info"

# Display System Uptime
uptime_info=$(uptime)
echo "Uptime: $uptime_info"
