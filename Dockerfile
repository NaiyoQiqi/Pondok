# Gunakan image PHP dengan Apache
FROM php:8.2-apache

# Install ekstensi PHP yang diperlukan (mysqli, pdo, pdo_mysql)
RUN apt-get update && apt-get install -y default-mysql-client && docker-php-ext-install mysqli pdo pdo_mysql

# Salin semua file aplikasi ke dalam container
COPY . /var/www/html/

# Set environment variables yang akan digunakan oleh aplikasi
ENV MYSQLHOST=mysql-production-a441.up.railway.app
ENV MYSQLPORT=3306
ENV MYSQLUSER=root
ENV MYSQLPASSWORD=IDczAsuYBydMOcGtlNDCZwBgwLfIjGyS
ENV MYSQLDATABASE=railway

# Expose port 8080 untuk mengakses aplikasi
EXPOSE 8080

# Command untuk menjalankan MySQL import (mengimpor database) dan menjalankan Apache
CMD ["sh", "-c", "mysql -h $MYSQLHOST -P $MYSQLPORT -u $MYSQLUSER -p$MYSQLPASSWORD $MYSQLDATABASE < /var/www/html/smmpanel_bagus.sql && apache2-foreground"]
