#!/bin/bash

# Collect System Metrics as a Percentage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
memory_usage=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
uptime=$(uptime -p)

echo "CPU Usage: $cpu_usage"
echo "Memory Usage: $memory_usage"
echo "Disk Usage: $disk_usage"
echo "Uptime: $uptime"
