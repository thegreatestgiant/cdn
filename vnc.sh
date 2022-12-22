#!/bin/bash

sudo apt update && sudo apt install tigervnc-standalone-server tigervnc-common -y
git clone https://github.com/novnc/noVNC
cd noVNC/
echo "./utils/novnc_proxy --vnc 0.0.0.0:5901 --listen 0.0.0.0:6081" > run.sh
chmod +x run.sh

sudo apt install xfce4 xfce4-goodies -y
cd ..
vncserver
vncserver -kill :1
cd .vnc
echo "#!/bin/sh" >> xstartup
echo "export XKL_XMODMAP_DISABLE=1" >> xstartup
echo "exec startxfce4" >> xstartup
chmod 777 xstartup
cd ..

sudo apt install firewalld -y
sudo firewall-cmd --permanent --zone=public --add-port=6080/tcp
sudo firewall-cmd --reload

vncserver
sleep 1

cd noVNC
./run.sh
