FROM php:7.2-apache

## You can lear http://manpages.ubuntu.com/manpages/bionic/en/man8/a2ensite.8.html

# a2enconf, a2disconf - Enable or disable an apache2 configuration file
ADD /conf-available/demo-config.conf /etc/apache2/conf-available
RUN a2enconf demo-config

# a2ensite, a2dissite - Enable or disable an apache2 site / virtual host
ADD	/sites-available/demo-virtualhost.conf /etc/apache2/sites-available
RUN	a2ensite demo-virtualhost

# a2enmod, a2dismod - Enable or disable an apache2 module
RUN a2enmod ssl

