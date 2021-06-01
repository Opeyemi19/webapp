Vagrant.configure("2") do |config|
  servers=[
   {
      :hostname => "newlinux-test1",
      :box => "generic/centos7",
      :ip => "192.168.5.12",
      :ssh_port => '2219'
   }
  ]

  servers.each do |machine|

    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]

      node.vm.network :private_network, ip: machine[:ip]
      node.vm.network "forwarded_port", guest: 22, host: machine[:ssh_port], id: "ssh"

      node.vm.provider :virtualbox do |v|
        v.customize ["modifyvm", :id, "--memory", 512]
        v.customize ["modifyvm", :id, "--name", machine[:hostname]]
      end
      node.vm.provision "shell", path: "script.sh"
    end
  end
end
