FROM php:7.2-apache

# a2enconf, a2disconf - Enable or disable an apache2 configuration file
ADD /conf-available/demo-config.conf /etc/apache2/conf-available
RUN a2enconf demo-config

# a2ensite, a2dissite - Enable or disable an apache2 site / virtual host
ADD	/sites-available/demo-vitualhost.conf /etc/apache2/sites-available
RUN	a2ensite demo-vitualhost

# a2enmod, a2dismod - Enable or disable an apache2 module
RUN a2enmod ssl