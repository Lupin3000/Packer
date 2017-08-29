# Packer repository

... build some Vagrant base boxes for VirtualBox ...

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com)
* [Packer](https://www.packer.io)

## Additional Information

2 users are created for every vagrant box. There are users root (pw:toor) and vagrant (pw:vagrant). Public key for vagrant can be found [here](https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub).

## How-to

### Example build vagrant box

```
# clone repository
$ git clone https://github.com/Lupin3000/Packer.git

# change directory
$ cd Packer/Alpine-3.4

# build via packer
$ packer build packer.json
```

### Example add box

```shell
# list current vagrant boxes
$ vagrant box list

# add new created box
$ vagrant box add lupin/debian9 target/virtualbox-Debian-9.box
```

### Example use Vagrantfile

```shell
# change back to root directory
$ cd ..

# edit Vagrantfile (add missing values)
$ vim Vagrantfile

# run environment via vagrant
$ vagrant up
```
