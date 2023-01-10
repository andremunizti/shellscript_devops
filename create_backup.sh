#!/bin/bash

# Set the database credentials
db_user=user
db_password=password
db_name=database

# Create a backup of the database
mysqldump -u $db_user -p$db_password $db_name > db_backup.sql
