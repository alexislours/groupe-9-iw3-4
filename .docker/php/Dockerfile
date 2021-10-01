FROM php:8-apache

#COPY php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html/

RUN apt-get update && apt-get install -y \
        libpng-dev \
        libzip-dev \
        libxml2-dev \
        libonig-dev \
        libmemcached-dev \
        curl \
        zip \
        unzip \
        openssl \
        libssl-dev \
        libcurl4-openssl-dev \
    && pecl install memcached \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mbstring pdo pdo_mysql mysqli zip \
    && docker-php-ext-enable memcached \
    && docker-php-source delete \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN echo date.timezone = Europe/Paris >> /usr/local/etc/php/conf.d/timezone.ini