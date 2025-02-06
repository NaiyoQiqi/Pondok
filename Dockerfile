# Gunakan image PHP dengan Apache
FROM php:8.2-apache

# Install ekstensi PHP yang diperlukan (mysqli, pdo, pdo_mysql)
RUN apt-get update && apt-get install -y default-mysql-client && docker-php-ext-install mysqli pdo pdo_mysql

# Set ServerName untuk Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Salin semua file aplikasi ke dalam container
COPY . /var/www/html/

# Expose port untuk mengakses aplikasi
EXPOSE 8080

# Jalankan Apache di foreground
CMD ["apache2-foreground"]
