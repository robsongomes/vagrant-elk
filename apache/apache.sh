#!/usr/bin/env bash

# Apache
sudo apt-get install apache2 -y

# Copy Example App
sudo cp -r /vagrant/apache/app-example/app01/ /var/www/html/

# Copy vhost com configuração de log personalizada
sudo cp /vagrant/apache/apache-vhost.conf /etc/apache2/sites-enabled/000-default.conf

# enable PHP
sudo apt-get install -y libapache2-mod-php

sudo service apache2 restart 