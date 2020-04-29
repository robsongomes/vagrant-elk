#!/usr/bin/env bash

# OpenJDK 8 (required for Elasticsearch)
sudo apt-get install openjdk-8-jre-headless -y

# Elasticsearch 7.6.2
curl -L -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.6.2-amd64.deb
sudo dpkg -i elasticsearch-7.6.2-amd64.deb

# Copy configuration file
sudo cp /vagrant/elasticsearch/elasticsearch.yml /etc/elasticsearch/

# Inicia o serviço do Elasticsearch
sudo service elasticsearch start

# Aguardando um pouco para o serviço subir
sleep 30