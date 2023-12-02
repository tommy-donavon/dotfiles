#!/bin/bash
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}
# basics
install ansible
install apt-transport-https
install ca-certificates
install curl
install gnupg-agent
install software-properties-common
install awscli
install chromium-browser
install curl
install exfat-utils
install file
install git
install htop
install nmap
install openvpn
install tmux
install vim
install neovim
install helm
install jq
install stow
install zsh
install bash-completion

install figlet
install lolcat