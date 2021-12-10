Vagrant.configure("2") do |config|

  config.vm.define "registry" do |server|
    server.vm.box = "debian/bullseye64"
    server.vm.hostname = "registry"
    server.vm.network "private_network", ip: "192.168.121.100"

    server.vm.synced_folder '.', '/vagrant', disabled: true # disable default binding

    server.vm.provider :libvirt do |domain|
      domain.memory = 512
      domain.cpus = 1
    end

  end
end