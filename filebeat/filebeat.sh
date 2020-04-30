#!/usr/bin/env bash

# Filebeat 7.6.2
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.6.2-amd64.deb
sudo dpkg -i filebeat-7.6.2-amd64.deb

# Enable Apache Filebeat Module
sudo filebeat modules enable apache

# Copy filebeat config
sudo cp /vagrant/filebeat/filebeat.yml /etc/filebeat/

# Copy configuração do campo de tempo de resposta no Filebeat
sudo cp /vagrant/filebeat/fields.yml /etc/filebeat/ 
sudo cp /vagrant/filebeat/default.json /usr/share/filebeat/module/apache/access/ingest/

# Inicia o serviço do filebeat
sudo service filebeat start

# Aguardando um pouco para o serviço subir
sleep 15