#!/bin/bash

# Set the threshold for disk space usage (in percent)
threshold=90

# Get the current disk space usage
usage=$(df / | awk '{ print $5 }' | tail -n 1 | sed 's/%//')

# Check if the usage is above the threshold
if [ $usage -gt $threshold ]; then
    # Send an alert if the threshold is exceeded
    echo "Error: Disk space usage is above the threshold." | mail -s "Alert: Low disk space" admin@example.com
fi
