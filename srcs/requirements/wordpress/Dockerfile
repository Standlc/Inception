FROM    alpine:3.18

RUN     apk update && apk add wget mysql mysql-client php81 php81-fpm php81-phar php81-json php81-mysqli php81-iconv

# Download the latest Wordpress source files
RUN     mkdir -p /wordpress
RUN     cd /wordpress
RUN     wget https://wordpress.org/wordpress-6.4.tar.gz

# Unpack the archive and delete it afterwards
RUN     tar -xzvf wordpress-6.4.tar.gz
RUN     rm wordpress-6.4.tar.gz

# wp-cli for setting up db pool & create users
RUN     wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN     chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# php-fpm configuration
COPY    conf/www.conf /etc/php81/php-fpm.d/www.conf

# Wordpress pool, admin & user creation
COPY    tools/setup.sh /tmp/setup.sh

EXPOSE  9000

CMD     ["sh", "/tmp/setup.sh"]