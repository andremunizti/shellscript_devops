#!/bin/bash

# Set the server address and port number
server=$1	
port=$2

# Check if the port is open
nc -z $server $port

if [ $? -eq 0 ]; then
    echo "Port $port is open on $server."
else
    echo "Port $port is closed on $server."
fi
