#!/bin/bash

if [ -f ./wp-config.php ]
then
	echo "Wordpress has already downloaded"
else

	# WordPress yapılandırması için gerekli işlemler
	echo "WordPress yapilandirmasi basliyor..."

	wget http://wordpress.org/latest.tar.gz
	tar xfz latest.tar.gz
	mv wordpress/* .
	rm -rf latest.tar.gz
	rm -rf wordpress

	# WordPress için veritabanı bağlantı ayarları
	sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config-sample.php
	sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config-sample.php
	sed -i "s/username_here/$MYSQL_USER/g" wp-config-sample.php
	sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config-sample.php
    cp wp-config-sample.php wp-config.php

    #sed -i "/<?php/a define( 'WP_SITEURL', 'https://example.com' );\ndefine( 'WP_HOME', 'https://example.com' );" wp-config-sample.php
	sed -i "s/example.com/$WP_URL/g" wp-config-sample.php

    echo "wordpress creating users..."
	wp core install --allow-root --url=${WP_URL} --title=${WP_DATABASE} --admin_user=${WP_ADMIN_LOGIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL};
	wp user create --allow-root ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD};
	wp db optimize --allow-root
fi
