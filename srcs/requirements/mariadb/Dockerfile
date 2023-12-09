FROM debian:buster

RUN apt-get update && apt-get install -y ntp && service ntp start && apt-get install -y mariadb-server

EXPOSE 3306

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./mariadb.sql /var/www/

RUN chmod +x /var/www/mariadb.sql

RUN service mysql start && mysql < /var/www/mariadb.sql && rm -f /var/www/mariadb.sql;

CMD ["mysqld"]