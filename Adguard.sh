#!/bin/bash

# Update
#echo "Update first"
#echo "yum -y update && yum upgrade -y"
sudo yum -y update && sudo yum upgrade -y

# Install epel-release
echo "Install epel-release"
EPEL="yum install epel-release -y"
echo $EPEL
sudo $EPEL

# get snapd
echo "snapd stuff"
sudo dnf info snapd
sudo dnf -y install snapd

# systemctl
echo "Systemctl stuff"
sudo systemctl status snapd.socket && systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

#install adguard now
echo "install adguard "
sudo snap info adguard-home
sudo snap install adguard-home

# Firewall stuff
echo "Firewall Stuff"
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --zone=public --add-port=53/udp --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --reload

# make it work
echo "make it work now"
sudo systemctl stop systemd-resolved && systemctl disable systemd-resolved

# You're done
echo "log into your Adguard-home acct. now on port 3000"
