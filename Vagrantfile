Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu/trusty64"
	config.vm.hostname = "dns.vm.b"
    config.vm.network "public_network", :mac => 'AA7777777702'

    config.vm.provision :shell, path: "vagrant/configure-vm.sh"
end
