#!/bin/bash

# Variable
bord="============================================================================================================================================================================"

# Install epel-release
echo $bord
echo "Install epel-release"
echo "It's ok id it says \"Failed loading plugin \"osmsplugin\": No module named 'librepo'\" epel-release will still download"
echo $bord
sudo yum install epel-release -y

# get snapd
echo $bord
echo "snapd stuff"
echo $bord
sudo yum install snapd -y

# systemctl
echo $bord
echo "Systemctl stuff"
echo $bord
sudo systemctl enable --now snapd.socket

#transfer
sudo ln -s /var/lib/snapd/snap /snap

sleep 1

#install adguard now
echo $bord
echo "Install adguard"
echo $bord
sudo snap install snapd
sleep 1
sudo snap install adguard-home

# Firewall stuff
echo $bord
echo "Firewall Stuff"
echo $bord
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --zone=public --add-port=53/udp --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --reload

# make it work
echo $bord
echo "make it work now"
echo $bord
sudo systemctl stop systemd-resolved && sudo systemctl disable systemd-resolved

# You're done
echo $bord
echo "log into your Adguard-home acct. now on port the port"
echo $bord
