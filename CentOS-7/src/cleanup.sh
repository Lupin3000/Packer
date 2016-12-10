set -exu

# delete directories
sudo rm -rf /tmp/* /var/cache/* /usr/share/doc/*

# delete log files
sudo rm -f /var/log/wtmp /var/log/btmp

# truncate logfiles
sudo truncate -s 0 {'/var/log/cron','/var/log/dmesg','/var/log/dmesg.old','/var/log/maillog','/var/log/messages','/var/log/secure','/var/log/lastlog'}

# truncate resolv.conf
sudo truncate -s 0 /etc/resolv.conf

sudo yum clean all

sudo dd if=/dev/zero of=/EMPTY bs=1M | true
sudo rm -fr /EMPTY

rm -f .bash_history
history -c
