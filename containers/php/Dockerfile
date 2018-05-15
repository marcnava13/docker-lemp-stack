# see https://github.com/cmaessen/docker-php-sendmail for more information

ARG PHP_VERSION=${PHP_VERSION}

FROM php:${PHP_VERSION}-fpm

RUN apt-get update && apt-get install -q -y ssmtp mailutils && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql mysqli

RUN echo "hostname=localhost.localdomain" > /etc/ssmtp/ssmtp.conf
RUN echo "root=root@example.com" >> /etc/ssmtp/ssmtp.conf
RUN echo "mailhub=maildev" >> /etc/ssmtp/ssmtp.conf

RUN echo "sendmail_path=sendmail -i -t" >> /usr/local/etc/php/conf.d/php-sendmail.ini

RUN echo "localhost localhost.localdomain" >> /etc/hosts