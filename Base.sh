#!/bin/bash -i

setup_shell() {
    echo "alias bat='batcat'
    alias cmatrix='cmatrix -sb'
    alias i='sudo apt install -y'
    alias cd..='cd ..'
    alias ip='curl icanhazip.com'
    alias ls='ls --color=auto -h'
    alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
    alias weather='curl wttr.in'
    alias zupdate='sudo apt update && sudo apt upgrade -y'
    HISTTIMEFORMAT='%Y-%m-%d %T '" >> ~/.bashrc

    exec bash
}

setup_packages() {
    sudo apt update -y && sudo update-initramfs -u -y && sudo apt upgrade -y

    sudo apt install -y nano net-tools docker docker.io docker-compose nautilus bat nginx sshfs zip unzip cmatrix tree

    echo "Done!"
}

setup_packages
setup_shell
