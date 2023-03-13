#!/bin/bash

#Update
echo "starting"
sudo apt update && sudo apt upgrade -y

# Install everything needed
echo "Install"
sudo apt install -y nano net-tools docker docker.io docker-compose nautilus bat nginx sshfs zip unzip cmatrix tree

echo "Hostname"
sudo hostnamectl set-hostname Home
cd /etc/ && sudo chown seanalter:seanalter hosts && echo "Hostname"
sudo hostnamectl set-hostname Home
sudo echo "127.0.1.1       Home   
127.0.0.1       localhost
::1             localhost ip6-localhost ip6-loopback
ff02::1         ip6-allnodes
ff02::2         ip6-allrouters" > /etc/hosts && sudo chown root:root hosts && cd ~/
#Install flatpak and all its packages
#echo "flatpak"
#sudo apt install flatpak gnome-software-plugin-flatpak -y
#sudo flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# ssh
echo "ssh"
mkdir .ssh
chmod 700 .ssh
cd .ssh
echo "Host adguard
  Hostname 158.101.114.159
  User opc

Host aapanel
  Hostname 132.145.200.42
  User opc

Host portainer
  Hostname 158.101.96.90
  User ubuntu

Host kavita
  Hostname 129.213.114.228
  User ubuntu" > config

echo "|1|8a+oP3jnLHPKYHb1fxDBJsFAI4U=|Sc3wqRweT0A7V4X6gB/ZhnR3gG0= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBHSZtriN9w9yfor7IASopcBNNoDai/88dccyDqQ9DdgrgGGRz9ya1YdGsGLBLxydICimcw1i7ELNX5DoDP1LPrY=
|1|vC8xEO0JDGr3KlVSP5a0PLZolFs=|y5yfL1BG298BfHVa2m2kJz9ktJM= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBHgVQ81L32Ips+cL9iMP85kIm9hAKG/OA8NB4QSki3LISq5Pximiaph/qYgtakj+j/W7IuhBv0F1ZMaLNYiHHCM=
|1|dHUJzp7OQ3QlOXFX7y0NAn4woDs=|bi/rI122a1io6xKYP5nJyMacMTc= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBBA4alMFmCTk3aS1aKIpCb4ZIDEXWLtLem3V78rOsq33XoFzxkAc+nAA4Z3B5n2zm290LP6151lSjLhRzrU1IUk=
|1|klSVdWgEP4dtq1dF3ep2QqLum3c=|LuDDC3RfklUYtrqyT3Ffy+2tDTk= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBGUvhk8N2fgYoJShAAiiAHdtE7wXVMAljOj+6z5mcUIfSfHvUkNofTTXQ5bjAW5GPR9WgvRCZtePQUFXaxlF66w=
|1|kVkyg6Un2ybv5LJ9DlMCgffdUQI=|bdpJlFgENdz+x/RyVKvF8OWEA+w= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEcooffKspbA2uhneC7ufEoJHuGQaCiTkOGhGpvpA9A+EXu6PYqCGvlBYI+Qrx4MRRZ0MjLwap3rZ5ge5QPEDiI=
|1|721adio24xXOGsfmV53rnNrA3oQ=|nNeHTPA/C9WxyD546aadEmLCj0s= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEgnEzaMnsUdnraDTXq0CcA2gwr6Nm3wRqDuFbfw1NQwryuj2Qz8dMOPbLW1H9WjV2v2gbwAJPPtFVG8H0Wb6AQ=" > known_hosts

echo "-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAtNV6hl7Od/nKRQHtlgvF8SqoG0Tfh6i0nTob3S6lE7b/YBi5
xsU7ZMUlCH4a75JfHRRcHZJ+IvZDyaTWFgp5nBgNKCpoGbYWjZrcZ35kJ61ZLd9V
Sn51mceBp5xg8Z3626UT5QsQYplFyINbK4fpAfsWyMpTlWVUIA1F/rWZKfGYh9mn
mxkaM+2qOu2CW8ykSxpFB6B5evJm2QS8edJp2xa0Z5btQCiifreRchSqj6XMEUsL
hangWHhTGVRAgr4RbKLSNYmeMviVrVuqz71DLaDvpf96bMDqxNe0Mw75fbIzSqjR
mJuu7pXknOf3uzuiaQoxytBvSdJXAHsI5CmVcwIDAQABAoIBACQ2xlFHhjifpQK5
1p8gX3UjEkRXwB4WSolcHD1ovHVcxfq0KOwmDnVpR7fSLUnB+dtEewgPEMSmpb+p
i5ghY+Y/KM9c4rkXbp/QHgh51svdWsklexquhZWUzyHGXuG0PgsjnX7WfuMIB+IW
cDkhACg95Pu0DRYTk0vR7K0MKA6udRsp7j2Eoof+EKNmrp4I2MV+2xRMHGg2THra
MIl+Vt8I0LpZjLyWYvf/Jq4tpbL8kJDygO+Jh1UwRr24Q5uge9c0jg9l/u5NxUlU
4NQquiF12+waS4nIliL71UKJjFHDFmNHhOW1844t5HGn8BcDGb1U5oqB/CeYIqtl
NvyQkD0CgYEA8VFqICRVv81TDdn7IjtayyeixrY6j1NxvxBusgUmeTzpokasPNw7
hyxRGqpf+pfPZbfmqo8F9WyKaGBzpKNaB1hezamrs7tH/nog4GnA6KP/ukhyrmmU
A719uEPFHwShfDyh2TqihcxiGLwyX2BhYTGHwik9CK0hfs7yLDKOjscCgYEAv9YC
bU7bdgIjk3Iid0kJT+4d4jjgP8vzD6q6yBgtz2mG7XR7kIGDfjoQlmle7I8x8CfE
y/hHisjTu2vhGZF26V1f1lG4SIloGL5ybUw3x/g3ZLS+v24IrCtjdYPbHRt/y8Wx
YGero/8I8L4C6QBaYapia5XmtyYU+IrzOlgQh/UCgYEAqVx1OeemUr1ce80vZn/3
obrIj+OWx75Nh0WWGtRogxAP/HbTLMd3889TgH5wa+Qdh4sAlVVZXjx2CvkeUD7g
0WTg7EAXJEXdKik2Z6lw3RU0Rd3Qtr2cRt+3mxnc/371gsbe5CE1rOebNTbnt25i
CZ+EYu0kS7GOX3wIFKLK0EMCgYAS2E0ou8RnVVJ1W5LzMOOPTI72+CtfWQOpmFX8
7hMh+vXcQcMZsP9f2QhkHjnK904qj12Pw/YTNiNGmBRm1Jlf12JgxWpbBdSKCbtn
7ULVjBa09+R9HawQbbq5gph1xYvKUsNX+xcrZxRTwfa7OOOoEHrWosUlXMJWoB/A
rYICOQKBgQCyqiE1HiDQWP7JHYsiSibIRr74Rxrw33oJM/ytTwv503zGLl94luZw
/wUw9gp79ooBPQ2OIxPy+k8mbzSHsGhOtD1lAYF+EKvLZheXsNapj4roNmf9YpfC
UHFfX0gwwggGh/phl1tXhM6rdGI9tShvtELppWpSCcMGBR6/STFLlg==
-----END RSA PRIVATE KEY-----" > id_rsa

echo "-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACCtgQaiTv8TkKu4HkLJfWKSI4Yy9XrCpQBWe1mt+B7tkwAAAJhHqfItR6ny
LQAAAAtzc2gtZWQyNTUxOQAAACCtgQaiTv8TkKu4HkLJfWKSI4Yy9XrCpQBWe1mt+B7tkw
AAAEA7OVfDEcfcH49IPvGWOhsLrFrOtY9UYlMbAZRVd+l3za2BBqJO/xOQq7geQsl9YpIj
hjL1esKlAFZ7Wa34Hu2TAAAAEXNlYW5hbHRlckBwZW5ndWluAQIDBA==
-----END OPENSSH PRIVATE KEY-----" > id_ed25519

echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK2BBqJO/xOQq7geQsl9YpIjhjL1esKlAFZ7Wa34Hu2T seanalter@penguin" > oracle.pub

chmod 600 id_ed25519 id_rsa

cd ~/

# Alias
echo "Alias"
echo "alias bat='batcat'
alias cmatrix='cmatrix -sb'
alias i='sudo apt install -y'
alias cd..='cd ..'
alias ip='curl icanhazip.com'
alias ls='ls --color=auto -h'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
alias weather='curl wttr.in'
alias zupdate='sudo apt update && sudo apt upgrade -y'
HISTTIMEFORMAT='%Y-%m-%d %T '" >> .bashrc

#fstab
cd /etc/ && sudo chown seanalter:seanalter fstab fuse.conf && sudo echo "

ubuntu@129.153.36.88:/home/ubuntu /home/seanalter/Kavita fuse.sshfs x-systemd.automount,_netdev,user,idmap=user,transform_symlinks,allow_other,default_permissions,uid=1000,gid=1000 0 0" >> fstab && echo "# The file /etc/fuse.conf allows for the following parameters:
#
# user_allow_other - Using the allow_other mount option works fine as root, in
# order to have it work as user you need user_allow_other in /etc/fuse.conf as
# well. (This option allows users to use the allow_other option.) You need
# allow_other if you want users other than the owner to access a mounted fuse.
# This option must appear on a line by itself. There is no value, just the
# presence of the option.

user_allow_other


# mount_max = n - this option sets the maximum number of mounts.
# Currently (2014) it must be typed exactly as shown
# (with a single space before and after the equals sign).

#mount_max = 1000" > fuse.conf && sudo chown root:root fstab fuse.conf && cd ~/
#Clean up
echo "Clean up"
sudo rm startup.sh
rm .sommelierrc
sudo apt update && sudo apt upgrade -y

#Done
echo "done"

exec bash