FROM    alpine:3.18

RUN     apk update && apk add wget mysql mysql-client php82-mysqli

# Create a directory named webapps
RUN     mkdir -p /usr/share/webapps/

# Download the latest Wordpress source files
RUN     cd /usr/share/webapps/
RUN     wget https://wordpress.org/latest.tar.gz

# Unpack the archive and delete it afterwards
RUN     tar -xzvf latest.tar.gz
RUN     rm latest.tar.gz

# Change the folder persmissions
# RUN     chown -R lighttpd /usr/share/webapps/

# Create a symlink to the wordpress folder
# RUN     ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress

