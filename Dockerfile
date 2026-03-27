# You can change this to a different version of Wordpress available at
# https://hub.docker.com/_/wordpress
FROM wordpress:latest

RUN apt-get update && apt-get install -y magic-wormhole

COPY php.ini /usr/local/etc/php/config.d/custom.ini

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
