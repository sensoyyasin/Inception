#!/bin/bash

CERT_PATH="/etc/nginx/ssl"
CERT_FILE="$CERT_PATH/nginx.crt"
KEY_FILE="$CERT_PATHY/nginx.key"

DAYS=365

if [! -f "$CERT_FILE" ]; then
	echo "Nginx: SSL Sertificate is creating..."

	openssl req -x509 -nodes -days "$DAYS" -newkey rsa:4096 -keyout "$KEY_FILE" -out "$CERT_FILE" -subj "/C=TR/ST=KOCAELI/L=GEBZE/O=42Kocaeli/CN=ysensoy.42.fr"

	echo "Nginx: SSL Sertificate created"

fi
