FROM php:8.0-apache

CMD chmod -R 755 /storage/branches/country-info \
  && ln -s /storage/branches/country-info/* /var/www/html \
  && apache2-foreground

