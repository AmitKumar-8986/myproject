FROM php:8.1-fpm-alpine

# Install PHP extensions
RUN apt-get update && apt-get install -y     libpq-dev     mysql-client

# Copy the application code
COPY src /var/www/html

# Expose the port
EXPOSE 80

# Start the PHP FastCGI server
CMD ["php-fpm"]
