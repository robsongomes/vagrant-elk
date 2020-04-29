#!/usr/bin/env bash

# Kibana 7.6.2
wget https://artifacts.elastic.co/downloads/kibana/kibana-7.6.2-amd64.deb
sudo dpkg -i kibana-7.6.2-amd64.deb && \

# Copy configuration file/home/vagrant/kibana-7.6.2-linux-x86_64/config
sudo cp /vagrant/kibana/kibana.yml /etc/kibana/ && \

# Inicia o serviço do kibana
sudo service kibana start 

# Aguardando um tempo para o serviço subir
sleep 60