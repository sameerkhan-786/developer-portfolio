#!/bin/bash
# Author: Sameer Khan
echo "Name: Sameer Khan | Roll No: 2601060232 | Date: $(date)"
echo "CPU: $(lscpu | awk -F: '/Model name/{print $2}' | xargs), Cores: $(nproc)"
free -h | awk '/Mem/{print "Total Memory: "$2", Used Memory: "$3}'
echo "Top 3 processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -4
echo "Report generated successfully."
