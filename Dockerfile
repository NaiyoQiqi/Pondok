FROM php:8.2-apache

# Install ekstensi PHP dan MySQL client
RUN apt-get update && apt-get install -y default-mysql-client && docker-php-ext-install mysqli pdo pdo_mysql

# Copy semua file ke server
COPY . /var/www/html/

# Import SQL saat container start
CMD mysql -h $DATABASE_HOST -u $DATABASE_USER -p$DATABASE_PASSWORD $DATABASE_NAME < /var/www/html/smmpanel_bagus.sql && apache2-foreground

EXPOSE 8080
