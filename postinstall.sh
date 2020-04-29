#!/usr/bin/env bash

# Recarrega o pipeline do Módulo Apache do Filebeats
sudo filebeat setup --pipelines --modules apache

# Configura os Dashboards do Filebat no Kibana
sudo filebeat setup