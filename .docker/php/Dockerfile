FROM php:8-apache

WORKDIR /var/www/html/

# Timezone configuration for Lumen
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
    && pecl install memcached xdebug \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mbstring pdo pdo_mysql mysqli zip \
    && docker-php-ext-enable memcached \
    && docker-php-ext-enable xdebug \
    && docker-php-source delete

# Composer installation
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Timezone configuration for Lumen
RUN echo "date.timezone = Europe/Paris" >> /usr/local/etc/php/conf.d/timezone.ini

# XDebug configuration
RUN echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini

# php.ini
COPY php.ini /usr/local/etc/php/php.ini

RUN a2enmod rewrite