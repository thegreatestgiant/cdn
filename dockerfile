# Use a Debian-based Linux distro as the base image
FROM debian:bullseye-slim

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    tigervnc-standalone-server tigervnc-common \
    git xfce4 xfce4-goodies \
    novnc \
    && apt-get clean

# Clone noVNC repository
RUN git clone https://github.com/novnc/noVNC /opt/novnc

# Create a startup script
RUN echo "#!/bin/bash" > /opt/run.sh \
    && echo "cd /opt/novnc" >> /opt/run.sh \
    && echo "./utils/novnc_proxy --vnc 0.0.0.0:5901 --listen 0.0.0.0:6081" >> /opt/run.sh \
    && chmod +x /opt/run.sh

# Create a VNC password
RUN mkdir -p ~/.vnc \
    && echo "vscode" | vncpasswd -f > ~/.vnc/passwd \
    && chmod 600 ~/.vnc/passwd

# Create a startup script for the VNC server
RUN echo "#!/bin/sh" > ~/.vnc/xstartup \
    && echo "export XKL_XMODMAP_DISABLE=1" >> ~/.vnc/xstartup \
    && echo "exec startxfce4" >> ~/.vnc/xstartup \
    && chmod +x ~/.vnc/xstartup

# Install and configure firewall
#RUN apt-get install -y firewalld \
#    && systemctl enable firewalld \
#    && systemctl start firewalld \
#    && firewall-cmd --permanent --zone=public --add-port=6080/tcp \
#    && firewall-cmd --reload

# Expose VNC and noVNC ports
EXPOSE 5901 6080

# Start VNC server and noVNC proxy
CMD vncserver :1 -localhost no -geometry 1366x768 && /opt/run.sh && echo "if it gives you an error and doesn't ask for a pass then run 'vncserver' and then /opt/run.sh"
