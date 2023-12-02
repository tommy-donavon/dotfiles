#!/bin/bash

setenv SCRIPTDIR `dirname $0`

$SCRIPTDIR/aptinstall.sh
$SCRIPTDIR/programs.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

# Fun hello
figlet "... we good" | lolcat