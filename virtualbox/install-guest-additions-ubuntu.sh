#!/usr/bin/env bash

set -Eeuo pipefail

sudo apt update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove
sudo apt autoclean

sudo apt -y install build-essential dkms linux-headers-"$(uname -r)"
sudo sh /media/"${USER}"/VBox*/VBoxLinuxAdditions.run
sudo usermod -aG vboxsf "${USER}"
