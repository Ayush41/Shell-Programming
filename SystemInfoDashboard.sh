#  A Bash script that displays essential system information (CPU, memory, disk usage, network stats).
# Features:

# Display real-time CPU and memory usage.
# Show available and used disk space.
# Network stats like IP address, uptime, and connected users.
# Why it’s Cool: Demonstrates basic Bash and Linux commands.

#! /bin/bash

echo "System INformation:"
echo "-------------------"

echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')"
echo "Memory Usage: $(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')"
echo "Disk Usage: $(df -h | grep '^/dev/' | awk '{print $5}')"
echo "IP Address: $(hostname -I)"
