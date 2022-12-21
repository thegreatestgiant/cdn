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
echo "Install snapd"
echo $bord
sudo yum install snapd -y

# systemctl
echo $bord
echo "Use Systemctl to verify snapd and start web console"
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
sleep 3
sudo snap install adguard-home

# Firewall stuff
echo $bord
echo "Enable Firewall For Adguard"
echo $bord
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --zone=public --add-port=53/udp --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --reload

# make it work
echo $bord
echo "Finish Firewall"
echo $bord
sudo systemctl stop systemd-resolved && sudo systemctl disable systemd-resolved

# You're done
echo $bord
echo "Setup in the web browser now on port 3000"
echo $bord
echo "Maintenance and Upgrading"
echo "Run \"sudo snap refresh adguard-home\" to update."
echo "sudo snap restart adguard-home (This'll restart the service etc)"
echo "sudo snap services"
echo $bord
exit 1
