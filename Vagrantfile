# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.guest = :freebsd

  config.vm.box = "kunst1080/freebsd-10.1-amd64"
  config.vm.box_url = "https://github.com/kunst1080/packer-freebsd/releases/download/10.1-amd64_ufs/freebsd-10.1-amd64.box"

  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider "virtualbox" do |vb|
    vb.name = "freebsd-shellgei"
    vb.gui = false
    vb.memory = "2048"
    vb.customize ["modifyvm", :id, "--natnet1", "10.0.0.0/24"]
  end

  config.vm.provision "file", source: "provision_root.sh", destination: "/tmp/provision_root.sh"
  config.vm.provision "file", source: "provision_user.sh", destination: "/tmp/provision_user.sh"
  config.vm.provision "file", source: "provision_pkg.list", destination: "/tmp/provision_pkg.list"
  config.vm.provision "shell", inline: <<-"EOS"
    sed -i '' "s/`printf '\r'`//g" /tmp/provision_root.sh
    sed -i '' "s/`printf '\r'`//g" /tmp/provision_user.sh
    sed -i '' "s/`printf '\r'`//g" /tmp/provision_pkg.list
    chmod +x /tmp/provision_root.sh /tmp/provision_user.sh
    sudo /tmp/provision_root.sh
    sudo -u vagrant /tmp/provision_user.sh
  EOS
end
