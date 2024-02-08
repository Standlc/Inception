cd /wordpress

# wait for mariadb to start
while ! mariadb -h mariadb -u $DB_USER -p$DB_PASSWORD $DB_NAME -e ";" 2>/dev/null ; do
	sleep 1
done

if ! test -f wp-config.php; then
    wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=mariadb:3306
fi

if ! wp core is-installed; then
    wp core install --title=$WP_SITE_TITLE --url=stde-la-.42.fr --admin_user=$WP_ADMIN_USERNAME --admin_email=$WP_ADMIN_USERNAME@wp.wp --admin_password=$WP_ADMIN_PASSWORD
    wp user create $WP_USER_USERNAME $WP_USER_USERNAME@wp.wp --user_pass=$WP_USER_PASSWORD
fi

exec php-fpm81 -F
