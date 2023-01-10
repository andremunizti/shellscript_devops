#!/bin/bash

# Update the package list and install Apache
apt update
apt install apache2 -y

# Enable the Apache service to start on boot
systemctl enable apache2

# Start the Apache service
systemctl start apache2
