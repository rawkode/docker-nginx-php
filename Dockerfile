FROM nginx:1.9.3

WORKDIR /var/www

# Install PHP5 depdendencies
RUN apt-get update && apt-get install -y \
  php5-fpm

# Our default virtual-host
ADD ./etc/nginx/virtual-host.conf /etc/nginx/sites-available/default

# Start php5-fpm and nginx
CMD service php5-fpm start && nginx

