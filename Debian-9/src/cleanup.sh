set -exu

# delete directories
sudo rm -rf /tmp/*

# delete log files
sudo rm -f /var/log/wtmp /var/log/btmp

# truncate resolv.conf
sudo truncate -s 0 /etc/resolv.conf

# clear history
rm -f .bash_history
