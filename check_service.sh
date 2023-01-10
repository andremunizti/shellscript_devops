#!/bin/bash

# Check the status of the service
service=$1
if systemctl is-active --quiet $service; then
    echo "$service is running."
else
    echo "$service is not running."
fi
