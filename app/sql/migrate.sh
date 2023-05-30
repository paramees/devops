#!/bin/bash

DB_HOST="172.28.0.2"
DB_USER="root"
DB_PASSWORD="password"
DB_NAME="bookstore"

SQL_FILE="migration.sql"

mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" -D "$DB_NAME" < "$SQL_FILE"
