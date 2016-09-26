set -exu

# enable repositories
echo "http://liskamm.alpinelinux.uk/v3.4/main" > /etc/apk/repositories
echo "http://liskamm.alpinelinux.uk/v3.4/community" >> /etc/apk/repositories
echo "http://liskamm.alpinelinux.uk/edge/main" >> /etc/apk/repositories
echo "http://liskamm.alpinelinux.uk/edge/community" >> /etc/apk/repositories
echo "http://liskamm.alpinelinux.uk/edge/testing" >> /etc/apk/repositories

# update and install packages
apk update && apk upgrade
apk add sudo bash curl

# configure vagrant
adduser -D vagrant
echo "vagrant:vagrant" | chpasswd
mkdir -pm 700 /home/vagrant/.ssh
curl -o /home/vagrant/.ssh/authorized_keys 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub'
chown -R vagrant:vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh

# add vagrant to wheel
adduser vagrant wheel

# configure sudoers
echo "Defaults exempt_group=wheel" > /etc/sudoers
echo "%wheel ALL=NOPASSWD:ALL" >> /etc/sudoers
