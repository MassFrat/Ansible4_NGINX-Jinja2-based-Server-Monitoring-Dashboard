#!/bin/bash/

# Collect System Metrics as a Percentage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEMORY_USAGE=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')
UPTIME=$(uptime -p)

# Display the Report
echo ""
echo "System Monitoring Report - $(date)"
echo "---------------------------------"
echo "CPU Usage: $CPU_USAGE%"
echo "Memory Usage: $MEMORY_USAGE%"
echo "Disk Usage: $DISK_USAGE"
echo "Uptime: $UPTIME"
echo ""