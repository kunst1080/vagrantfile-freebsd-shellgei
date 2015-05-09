# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.guest = :freebsd

  config.vm.box = "kunst1080/freebsd-10.1-amd64"
  config.vm.box_url = "https://github.com/kunst1080/packer-freebsd/releases/download/10.1-amd64_ufs/freebsd-10.1-amd64.box"

  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider "virtualbox" do |vb|
    vb.name = "freebsd-base"
    vb.gui = false
    vb.memory = "2048"
    vb.customize ["modifyvm", :id, "--natnet1", "10.0.0.0/24"]
  end

  config.vm.provision "shell", :path => "provision.sh"
end
