FROM php:apache-bullseye

#install mysqli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
# Start Apache correctly
RUN apachectl restart

CMD rm -r /var/www/html \
  && ln -s $(pwd) /var/www/html \
  && sed -i "s/80/$PORT/" /etc/apache2/sites-enabled/000-default.conf \
  && sed -i "s/80/$PORT/" /etc/apache2/ports.conf \
  && apache2-foreground








