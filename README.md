# VMMadness
###### A simple Bash script for your devops pipeline
* Sets up two Ubuntu VM's with passwordless SSH in the environment of your choice
***

### Dependencies

* Vagrant 2.2.10+
* VirtualBox 6.1

### Setup

1. Install Vagrant and VirtualBox. [See the documentation](https://learn.hashicorp.com/tutorials/vagrant/getting-started-index)

2. Add the `Vagrantfile`, `setup.sh`, and `vmSetup.sh` files to your working directory. Your environment should look like this:
```
	workingDir/
		Vagrantfile --> vagrant config file 
		setup.sh --> vagrant setup script 
		vmSetup.sh --> provisioning file for both VMs 
```

3. Run the setup script with `bash setup.sh`
	* Two vagrant Virtual Machines, `vmOne` & `vmTwo`, will be created
	* RSA SSH Keys will be generated locally in each VM 
	    * The public keys are then copied to their complementing VMs to ensure password free SSHing  

4. Freely SSH to either VM 
    * Connect to either machine from localhost via `vagrant ssh <machine name>`
    * While in one machine, SSH to the other using `ssh <ip>`
		* by default, the private IPs are assigned as such:
			* vmOne - 10.0.0.200
			* vmTwo - 10.0.0.201

### mk