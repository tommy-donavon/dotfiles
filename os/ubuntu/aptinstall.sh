#!/bin/bash
sudo add-apt-repository -y ppa:ansible/ansible
sudo add-apt-repository -y ppa:maveonair/helix-editor
sudo add-apt-repository -y ppa:aslatter/ppa
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


install alacritty
install ansible
install apt-transport-https
install awscli
install bash-completion
install ca-certificates
install chromium-browser
install curl
install curl
install exfat-utils
install figlet
install file
install git
install gnupg-agent
install helix
install helm
install htop
install jq
install lolcat
install neovim
install nmap
install openvpn
install software-properties-common
install stow
install tmux
install vim
install zsh
