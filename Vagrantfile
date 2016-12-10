# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_version ">= 1.9.0"

Vagrant.configure("2") do |config|
  # Vagrant box.
  config.vm.box_url = ""
  config.vm.box = ""

  # Disable automatic box update checking.
  config.vm.box_check_update = false

  # Share an additional folder to the guest VM.
  config.vm.synced_folder ".", "/vagrant_data", disabled: true

  # VirtualBox specific configuration
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.name = ""
    vb.memory = "1024"
    vb.v.cpus = 1
  end

end
