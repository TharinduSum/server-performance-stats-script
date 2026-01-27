#!/bin/bash

echo "--- Server Performance Stats ---"

#OS Version
echo -e "\n[ OS Version ]"
lsb_release -d | cut -f2 || cat /etc/os-release | grep "PRETTY_NAME" | cut -d= -f2

#Uptime & Load Average
echo -e "\n[ Uptime & Load Average ]"
uptime

#Total CPU Usage
echo -e "\n[ CPU Usage ]"
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "Total CPU Usage: " 100 - $1 "%"}'

#Total Memory Usage
echo -e "\n[ Memory Usage ]"
free -m | awk 'NR==2{printf "Used: %sMB / Total: %sMB (%.2f%%)\n", $3, $2, $3*100/$2 }'

#Total Disk Usage
echo -e "\n[ Disk Usage ]"
df -h --total | grep 'total' | awk '{printf "Used: %s / Total: %s (%s)\n", $3, $2, $5}'

#Top 5 Processes by CPU
echo -e "\n[ Top 5 Processes by CPU Usage ]"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

#Top 5 Processes by Memory
echo -e "\n[ Top 5 Processes by Memory Usage ]"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

echo -e "\n--------------------------------"
