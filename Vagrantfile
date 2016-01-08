Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
  config.vm.boot_timeout = 1000
  config.vm.network :forwarded_port, host: 4000, guest: 4000
  config.vm.provision :shell, :privileged => false, 
                      :inline => "sudo -u vagrant /vagrant/vagrant/setup.sh" 

end
