FROM php:7.2-fpm

LABEL maintainer="CaeruxLab-TA"

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) bcmath \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd


# RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
#     && pecl install memcached-3.1.3 \
#     && docker-php-ext-enable memcached

ADD php.ini /usr/local/etc/php/