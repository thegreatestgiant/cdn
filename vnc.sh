#!/bin/bash

apt update && apt install tigervnc-standalone-server tigervnc-common -y
git clone https://github.com/novnc/noVNC
echo "cd noVNC" > run.sh
echo "./utils/novnc_proxy --vnc 0.0.0.0:5901 --listen 0.0.0.0:6081" >> run.sh
chmod +x run.sh
apt install xfce4 xfce4-goodies -y
vncserver
sleep 1
vncserver -kill :1
cd .vnc
echo "#!/bin/sh" >> xstartup
echo "export XKL_XMODMAP_DISABLE=1" >> xstartup
echo "exec startxfce4" >> xstartup
chmod 777 xstartup
cd ..

apt install firewalld -y
firewall-cmd --permanent --zone=public --add-port=6080/tcp
firewall-cmd --reload

vncserver

./run.sh
echo "if it gives you an error and doesn't ask for a pass then run `vncserver` and then ./run.sh"
