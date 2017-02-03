FROM php:5.6-apache
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install -j$(nproc) mcrypt mysql\
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
COPY dzzoffice1.2.5.2_SC_UTF8/upload/ /var/www/html/
RUN chown -R www-data:www-data /var/www/html/core/config /var/www/html/data
