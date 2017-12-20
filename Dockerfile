FROM php:7.0-apache


COPY php.ini /usr/local/etc/php/  
COPY /css/ /var/www/html/css/
COPY /images/ /var/www/html/images/
COPY /js/ /var/www/html/js/
COPY about.php /var/www/html/
COPY account.php /var/www/html/
COPY admin.php /var/www/html/
COPY admin-update.php /var/www/html/
COPY bolt.sql /var/www/html/
COPY bolt-new-phpmyadmin.sql /var/www/html/
COPY php.ini /var/www/html/
COPY cart.php /var/www/html/
COPY config.php /var/www/html/
COPY contact.php /var/www/html/
COPY humans.txt /var/www/html/
COPY index.php /var/www/html/
COPY insert.php /var/www/html/
COPY login.php /var/www/html/
COPY logout.php /var/www/html/
COPY orders.php /var/www/html/
COPY orders-update.php /var/www/html/
COPY products.php /var/www/html/
COPY register.php /var/www/html/
COPY robots.txt /var/www/html/
COPY success.php /var/www/html/
COPY update.php /var/www/html/
COPY update-cart.php /var/www/html/
COPY verify.php /var/www/html/
