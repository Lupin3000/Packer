# Packer repository

... build some Vagrant boxes for VirtualBox ...

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com)
* [Packer](https://www.packer.io)

## Additional Information

2 users are created for every vagrant box. There are root (pw:toor) and vagrant (pw:vagrant). Public key for vagrant can be find [here](https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub).

## How-to

```
# clone repository
$ git clone https://github.com/Lupin3000/Packer.git

# change directory
$ cd Packer/Alpine-3.4

# build
$ packer build packer.json
```
