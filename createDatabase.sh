#!/bin/bash

# Explicitly start the MySQL daemon in the foreground
mysqld --user=mysql --console &
MYSQL_PID=$!

# Wait for MySQL service to start
until mysqladmin ping -h localhost --silent; do
    sleep 1
done

# Set root user password
MYSQL_ROOT_PASSWORD="springstudent"

# Run SQL command to set root password
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY '$MYSQL_ROOT_PASSWORD';"

# MySQL root user credentials
MYSQL_ROOT_USER="root"

# SQL script to create a database
SQL_SCRIPT="backup.sql"

# Execute the SQL script to create the database
mysql -u $MYSQL_ROOT_USER -p$MYSQL_ROOT_PASSWORD < $SQL_SCRIPT

# Clean up and stop the MySQL daemon
kill $MYSQL_PID
