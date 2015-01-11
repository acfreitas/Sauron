Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise32"

  config.vm.define :CI do |ci| 
    ci.vm.hostname = 'CI'
    ci.vm.network :private_network, ip: '192.168.33.10'
    ci.vm.network :forwarded_port, guest: 8080, host: 8080
    ci.vm.provider :virtualbox do |vb|
       vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
    ci.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = 'cookbooks'
      chef.add_recipe 'main::ci'
    end 
  end

  config.vm.define :DB do |db| 
    db.vm.hostname = 'DB'
    db.vm.network :private_network, ip: '192.168.33.11'
    db.vm.network :forwarded_port, guest: 5432, host: 8081
    db.vm.provider :virtualbox do |vb|
       vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
    db.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = 'cookbooks'
      chef.add_recipe 'main::db'
    end 
  end
end