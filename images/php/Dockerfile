ARG PHP_IMAGE
ARG PHP_EXT_CONF_FIX

FROM php:${PHP_IMAGE}

RUN apt-get update && apt-get install -y \
        curl \
        wget \
        git \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libwebp-dev

RUN apt-get install -y libzip-dev libonig-dev

RUN docker-php-ext-configure gd --with-freetype${PHP_EXT_CONF_FIX} --with-jpeg${PHP_EXT_CONF_FIX} --with-webp${PHP_EXT_CONF_FIX}
RUN docker-php-ext-install -j$(nproc) gd iconv mbstring mysqli pdo_mysql zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini

RUN usermod -u 1000 www-data

WORKDIR /var/www

CMD ["php-fpm"]
