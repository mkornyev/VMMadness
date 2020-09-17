Vagrant.configure("2") do |config|
    config.vm.define "vmOne" do |vmOne|    
        vmOne.vm.box = "hashicorp/bionic64"
        vmOne.vm.box_version = "1.0.282"
        vmOne.vm.network "private_network", ip: "10.0.0.200"
        vmOne.vm.provision :shell, path: "vmSetup.sh"
    end
    config.vm.define "vmTwo" do |vmTwo|    
        vmTwo.vm.box = "hashicorp/bionic64"
        vmTwo.vm.box_version = "1.0.282"
        vmTwo.vm.network "private_network", ip: "10.0.0.201"
        vmTwo.vm.provision :shell, path: "vmSetup.sh"
    end
end