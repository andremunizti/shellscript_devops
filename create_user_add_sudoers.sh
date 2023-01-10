#!/bin/bash

# Create a new user
user=$1
password=$2
useradd -m $user
echo "$user:$password" | chpasswd

# Add the user to the sudo group
usermod -aG sudo $use
