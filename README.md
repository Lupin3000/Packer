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

```shell
# clone repository
$ git clone https://github.com/Lupin3000/Packer.git

# change directory
$ cd Packer/Alpine-3.4

# build via packer
$ packer build packer.json
```

### Example add box

This is when you like to go with default way...

```shell
# list current vagrant boxes (optional)
$ vagrant box list

# add new created box
$ vagrant box add lupin/debian9 target/virtualbox-Debian-9.box

# create directory
$ mkdir -p ~/Projects/Debian9 && cd ~/Projects/Debian9

# init with specific box
$ vagrant init lupin/debian9
```

### Example use Vagrantfile

This is when you are in development mode...

```shell
# change back to root directory
$ cd ..

# edit Vagrantfile (add missing values)
$ vim Vagrantfile

# run environment via vagrant
$ vagrant up
```
