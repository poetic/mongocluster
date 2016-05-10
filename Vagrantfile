# -*- mode: ruby -*-
# vi: set ft=ruby :
 
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
 
  config.vm.define :configsvr1 do |configsvr1|
    configsvr1.vm.hostname = "configsvr1"
    configsvr1.vm.network "private_network", ip: "192.168.50.10"
 
    configsvr1.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
      ansible.sudo = true
    end
  end
 
  config.vm.define :configsvr2 do |configsvr2|
    configsvr2.vm.hostname = "configsvr2"
    configsvr2.vm.network "private_network", ip: "192.168.50.11"
 
    configsvr2.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
      ansible.sudo = true
    end
  end
 
  config.vm.define :configsvr3 do |configsvr3|
    configsvr3.vm.hostname = "configsvr3"
    configsvr3.vm.network "private_network", ip: "192.168.50.12"
 
    configsvr3.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
      ansible.sudo = true
    end
  end
 
  config.vm.define :query1 do |query1|
    query1.vm.hostname = "query1"
    query1.vm.network "private_network", ip: "192.168.50.13"
 
    query1.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
      ansible.sudo = true
    end
  end
 
  config.vm.define :query2 do |query2|
    query2.vm.hostname = "query2"
    query2.vm.network "private_network", ip: "192.168.50.14"
 
    query2.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
      ansible.sudo = true
    end
  end
 
  config.vm.define :shard1 do |shard1|
    shard1.vm.hostname = "shard1"
    shard1.vm.network "private_network", ip: "192.168.50.15"
 
    shard1.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
      ansible.sudo = true
    end
  end
 
  config.vm.define :shard2 do |shard2|
    shard2.vm.hostname = "shard2"
    shard2.vm.network "private_network", ip: "192.168.50.16"
 
    shard2.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
      ansible.sudo = true
    end
  end
 
  config.vm.define :shard3 do |shard3|
    shard3.vm.hostname = "shard3"
    shard3.vm.network "private_network", ip: "192.168.50.17"
 
    shard3.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.verbose = "vv"
      ansible.sudo = true
    end
  end
 
end