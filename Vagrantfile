VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # Box name
    config.vm.box = "trusty64"

    # Box URL
    config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

    # Setup script to run with root permissions
    config.vm.provision :shell, :path => "bootstrap-root.sh"

    # Setup script to run with default user permissions
    config.vm.provision :shell, :path => "bootstrap-vagrant.sh", privileged: false

    config.vm.synced_folder ".", "/var/www", owner: "www-data", group: "www-data"

    # Bridge to access the project from
    config.vm.network :forwarded_port, host: 8080, guest: 80

end
