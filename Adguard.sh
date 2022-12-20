#!/bin/bash

# cool variable
SPaCE="/\/\/\/\//\//\/\/\/\/\//\/\/\/\/\/\//\/\/\/\\/\/\/\/\\//\\/\//\\/\\/\/\/\\\/\\\/\/\\/\/\/\/\\\/\\/\"

# Update
#echo "Update first"
#echo "yum -y update && yum upgrade -y"
sudo yum -y update && sudo yum upgrade -y

# Install epel-release
echo "$SPaCE $SPaCE $SPaCE $SPaCE Install epel-release $SPaCE $SPaCE $SPaCE $SPaCE"
EPEL="yum install epel-release -y"
echo $EPEL $SPaCE
sudo $EPEL

# get snapd
echo "$SPaCE $SPaCE $SPaCE snapd stuff $SPaCE $SPaCE $SPaCE"
sudo dnf info snapd
sudo dnf -y install snapd

# systemctl
echo "$SPaCE $SPaCE $SPaCE Systemctl stuff $SPaCE $SPaCE $SPaCE"
sudo systemctl status snapd.socket && systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

#install adguard now
echo "$SPaCE $SPaCE $SPaCE $SPaCE Install adguard $SPaCE $SPaCE $SPaCE"
sudo snap info adguard-home
sudo snap install adguard-home

# Firewall stuff
echo "$SPaCE $SPaCE $SPaCE $SPaCE Firewall Stuff $SPaCE $SPaCE $SPaCE $SPaCE"
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --zone=public --add-port=53/udp --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --reload

# make it work
echo "$SPaCE $SPaCE $SPaCE make it work now $SPaCE $SPaCE $SPaCE"
sudo systemctl stop systemd-resolved && systemctl disable systemd-resolved

# You're done
echo "log into your Adguard-home acct. now on port the port"
