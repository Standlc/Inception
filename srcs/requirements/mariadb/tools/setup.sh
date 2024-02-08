mysqld_safe &

# wait for server to start
while ! mysql -u root -e ";" 2> /dev/null; do
	sleep 1
done

# creating the wordpress DB and user
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -e "CREATE USER IF NOT EXISTS $DB_USER@localhost IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO $DB_USER@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root shutdown

exec mysqld_safe