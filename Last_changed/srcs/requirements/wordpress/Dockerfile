FROM debian:buster

RUN apt-get update && apt-get -y install \
    wget \
    php \
    curl \
    php7.3 \
    php-cgi \
    php-mysql \
    php-fpm \
    php-pdo \
    php-gd php-cli \
    php-mbstring \
    vim \
    mariadb-client

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    php wp-cli.phar --info && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir /run/php

COPY ./tools/wordpress_start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/wordpress_start.sh
ENTRYPOINT ["/usr/local/bin/wordpress_start.sh"]

WORKDIR /var/www/html/

EXPOSE 9000

# --nodaemonize or -F (Force to stay in foreground and ignore daemonize option from configuration file.)
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
