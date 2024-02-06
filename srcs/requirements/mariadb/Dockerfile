FROM    alpine:3.15

RUN     apk update && apk add mariadb mariadb-client

        # initalize mariadb
RUN     mysql_install_db --user=mysql --datadir=/var/lib/mysql

COPY    tools/setup.sh /tmp/setup.sh
COPY    conf/my.cnf /etc/my.cnf

# CMD     sh /tmp/setup.sh

# /etc/my.cnf
# /etc/my.cnf.d/mariadb-server.cnf

CMD     ["sh", "/tmp/setup.sh"]