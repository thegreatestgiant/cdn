#!/bin/bash

PACKAGES=("nano" "net-tools" "docker" "docker.io" "docker-compose" "nautilus" "bat" "nginx" "sshfs" "zip" "unzip" "cmatrix" "tree")

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

sudo apt update -y && sudo update-initramfs -u -y && sudo apt upgrade -y

install_all_packages() {
  echo "Installing all packages without prompting..."
  sudo apt install -y "${PACKAGES[@]}"
  echo "Done!"
}

install_selected_packages() {
  echo "Please select which packages you don't want to install (enter the numbers separated by spaces):"
  for i in "${!PACKAGES[@]}"; do
    echo "[$i] ${PACKAGES[$i]}"
  done

  read -r -a choices
  for choice in "${choices[@]}"; do
    if [[ "$choice" =~ ^[0-9]+$ ]]; then
      unset PACKAGES[$choice]
    fi
  done

  echo "Installing selected packages..."
  sudo apt install -y "${PACKAGES[@]}"
  echo "Done!"
}


# Process command-line options
while getopts ":hy" opt; do
  case $opt in
    h)
      echo "Usage: $0 [-y]"
      echo "  -y: automatically install all packages without prompting"
      echo "  -h: display this help message"
      exit 0
      ;;
    y)
      install_all_packages
      setup_shell
      exit 0
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

echo -n "Do you want to install all packages? [Y/n] "
read choice_all
choice_all="${choice_all:-y}"

if [[ "$choice_all" =~ ^[Yy]$ ]]; then
  install_all_packages
else
  install_selected_packages
fi

setup_shell
