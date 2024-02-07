FROM    alpine:3.18

RUN     apk update && apk add mariadb mariadb-client

# initializes the MariaDB data directory and creates the system tables
RUN     mysql_install_db --user=mysql --datadir=/var/lib/mysql

COPY    tools/setup.sh /tmp/

# DB config (port, user, etc)
COPY    conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

EXPOSE  3306

CMD     ["sh", "/tmp/setup.sh"]

# /etc/my.cnf
# /etc/mysql/my.cnf
# /etc/my.cnf.d/mariadb-server.cnf