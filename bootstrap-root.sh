#!/usr/bin/env bash

# Update the core system and install project dependencies
apt-get update && apt-get install -y apache2 curl php5 php5-cli php5-mysql php5-dev php5-xdebug php5-apcu php5-memcached php-pear libyaml-dev vim

# Example pecl package install
yes '' | pecl install yaml
echo 'extension=yaml.so' | tee -a /etc/php5/apache2/php.ini
echo 'extension=yaml.so' | tee -a /etc/php5/cli/php.ini

# Set the timezone
echo 'date.timezone=America\Los_Angeles' | tee -a /etc/php5/apache2/php.ini
echo 'date.timezone=America\Los_Angeles' | tee -a /etc/php5/cli/php.ini

# Copy custom apache config
cp /vagrant/000-default.conf /etc/apache2/sites-enabled
a2enmod rewrite
service apache2 reload

# Setup composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/bin/composer
