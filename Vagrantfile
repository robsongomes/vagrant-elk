# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config| 
    config.vm.box = "ubuntu/xenial64"
    config.vm.network "private_network", ip: "192.168.56.210"
    config.vm.provision :hosts, :sync_hosts => true

    config.vm.provider "virtualbox" do |v|
      v.memory = 6144
      v.cpus = 2
    end

    config.vm.provision "shell", :path => "bootstrap.sh"
    config.vm.provision "shell", :path => "apache/apache.sh"
    config.vm.provision "shell", :path => "elasticsearch/elasticsearch.sh"
    config.vm.provision "shell", :path => "kibana/kibana.sh"
    config.vm.provision "shell", :path => "filebeat/filebeat.sh"
    config.vm.provision "shell", :path => "postinstall.sh"
end
