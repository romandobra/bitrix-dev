FROM php:8.2-fpm-bullseye

RUN apt-get update && apt-get install -y \
        curl \
        wget \
        git \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev

RUN apt-get install -y libzip-dev libonig-dev

RUN docker-php-ext-install -j$(nproc) gd iconv mbstring mysqli pdo_mysql zip
RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini

RUN usermod -u 1000 www-data

WORKDIR /var/www

#https://www.1c-bitrix.ru/download/scripts/bitrixsetup.php
#http://www.1c-bitrix.ru/download/scripts/restore.php

CMD ["php-fpm"]
