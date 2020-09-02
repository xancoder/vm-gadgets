#!/usr/bin/env bash

# echo commands to stdout
set -x

# exit on first error
set -e

# treat undefined environment variables as errors
set -u

sudo apt update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove
sudo apt autoclean

sudo apt install build-essential dkms linux-headers-"$(uname -r)"
sudo sh /media/"${USER}"/VBox*/VBoxLinuxAdditions.run
sudo usermod -aG vboxsf "${USER}"
