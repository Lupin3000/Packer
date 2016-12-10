set -exu

# create mount directory
mkdir /tmp/isomount

# mount iso
sudo mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/isomount

# run install
sudo /tmp/isomount/VBoxLinuxAdditions.run --nox11

# unmount
sudo umount /tmp/isomount

# delete iso
rm -f /home/vagrant/VBoxGuestAdditions.iso
