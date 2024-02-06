mysqld_safe &

# echo "Started\n"

# exec mysqld --user=root

mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
# mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
# mysql -e "FLUSH PRIVILEGES;"

# mysqladmin -u root shutdown
# OR
# mysqladmin -u root password 'password'

# mysqld_safe