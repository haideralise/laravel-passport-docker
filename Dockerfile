FROM php:7.2-fpm-alpine

WORKDIR /var/www

RUN docker-php-ext-install pdo pdo_mysql && \
php -r "copy('http://getcomposer.org/installer', 'composer-setup.php');" && \
php composer-setup.php --install-dir=/usr/bin --filename=composer && \
php -r "unlink('composer-setup.php');"
