set -exu

# create directory
mkdir -pm 0700 ~/.ssh

# download public key
curl -o ~/.ssh/authorized_keys https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub

# change access rights
chmod 0600 ~/.ssh/authorized_keys
