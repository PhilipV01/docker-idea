For country info development we used PHP and Apache. Apache needs to be set to understand that the container's work directory is its root folder. The port also needs to be set to match the PORT environment variable.


We started by Installing PHP driver for MySQL with following command
RUN docker-php-ext-install pdo pdo_mysql

Then we started apache and execute the following steps:

Deleting the real Apache root folder /var/www/html
Making a symbolic link /var/www/html pointing to our work dir
Replacing port 80 (the default apache port)
Adjust the port in two Apache config files
and starting  Apache
CMD rm -r /var/www/html \
  && ln -s $(pwd) /var/www/html \
  && sed -i "s/80/$PORT/" /etc/apache2/sites-enabled/000-default.conf \
  && sed -i "s/80/$PORT/" /etc/apache2/ports.conf \
  && apache2-foreground