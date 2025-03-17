    
COPY . /usr/src/myapp
CMD [ "php", "./index.php" ]
FROM php:8.2-apache

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html