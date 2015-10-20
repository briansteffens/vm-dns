#!/bin/bash

# Install needed software.
apt-get update
apt-get -y install squid-deb-proxy-client
apt-get -y install bind9

# Bring up the firewall.
apt-get -yd install iptables-persistent

/vagrant/vagrant/firewall.sh

echo "iptables-persistent iptables-persistent/autosave_v4 boolean true" | debconf-set-selections
echo "iptables-persistent iptables-persistent/autosave_v6 boolean true" | debconf-set-selections
apt-get -y install iptables-persistent

# Copy bind9 config customizations.
cp /vagrant/local/* /etc/bind/
sudo service bind9 restart
