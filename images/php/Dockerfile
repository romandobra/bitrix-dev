# PHP74
ARG PHP_IMAGE="7.4-fpm"
ARG PHP_EXT_CONF_FIX="-dir=/usr/include/"

# PHP82
#ARG PHP_IMAGE="8.2-fpm-bullseye"
#ARG PHP_EXT_CONF_FIX=

# comment out the PHP82 ARGs to install PHP74

FROM php:${PHP_IMAGE}

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
RUN docker-php-ext-configure gd --with-freetype${PHP_EXT_CONF_FIX} --with-jpeg${PHP_EXT_CONF_FIX}

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini

RUN usermod -u 1000 www-data

WORKDIR /var/www

CMD ["php-fpm"]
