# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  vm_name = 'rails-server' # Pathname.new(Dir.getwd).basename.to_s
  config.vm.box = "hashicorp/precise64"
  config.vm.provider :virtualbox do |vb|
    vb.name=vm_name
    vb.customize ['modifyvm', :id, '--memory', '2048']
  end
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.hostname=vm_name
  config.vm.provision "shell", path: "provision.sh"
end
