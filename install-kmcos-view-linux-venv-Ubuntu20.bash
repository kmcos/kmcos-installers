#!/bin/bash -eu


echo "Installing Dependencies for kmcos view function"

cd ~
echo "Installing Python3-gi"
sudo apt-get install python3-gi

echo "Installing Pycairo"
sudo apt install libcairo2-dev pkg-config python3-dev
pip3 install pycairo #pycairo 1.21.0 with PyGobject of 3.42.2 is known to work with Ubuntu 20.04 LTS on VirtualBox as of Aug 14th 2022

echo "Installing PyGObject"
sudo apt install libglib2.0-dev
sudo apt install libgirepository1.0-dev
pip3 install pygobject #pycairo 1.21.0 with PyGobject of 3.42.2 is known to work with Ubuntu 20.04 LTS on VirtualBox as of Aug 14th 2022

echo "Installing Tkinter"
sudo apt-get install python3-tk
#rm sudo-kmcos-install-dependencies-ubuntu.bash
