#!/bin/bash

if [ ! -f /etc/nginx/ssl/nginx.crt ]; then
	echo "Nginx: SSL Sertificate is creating...";
	openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=/ST=/L=/O=/CN=${DOMAIN_NAME}";
	echo "Nginx: SSL Sertificate created";
fi
