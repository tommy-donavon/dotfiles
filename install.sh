#!/bin/bash

OS=$(uname -s)

if [[ $OS == "Darwin" ]]; then

  echo "setting macos defaults..."
  source ./os/macos/defaults.sh

  # check brew install
  if ! $(command -v brew &>/dev/null); then
    echo "unmet dependency: Please install homebrew"
  fi

  echo "installing brews..."
  brew bundle install --file=${PWD}/os/macos/Brewfile

else
  echo "no configs configured for ${OS}"
  exit
fi

stow .
