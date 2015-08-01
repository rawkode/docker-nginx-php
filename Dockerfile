FROM nginx:1.9.3

WORKDIR /var/www

# Install PHP5 depdendencies
RUN apt-get update && apt-get install -y \
  php5-fpm

# Permissions
RUN groupmod -g 109 www-data && usermod -aG www-data nginx

# Configure nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

# Start php5-fpm and nginx
CMD service php5-fpm start && nginx

