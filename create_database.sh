#!/bin/bash

# Set the database credentials
db_user=root
db_password=password

# Create a new database and user
mysql -u $db_user -p$db_password << EOF
CREATE DATABASE newdatabase;
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'newpassword';
GRANT ALL PRIVILEGES ON newdatabase.* TO 'newuser'@'localhost';
EOF
