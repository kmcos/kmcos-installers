#!/bin/bash -eu


echo "Installing Dependencies for kmcos view function"

cd ~
echo "Installing Python3-gi"
sudo apt-get install python3-gi

echo "Installing Pycairo Version 1.11.1"
sudo apt install libcairo2-dev pkg-config python3-dev
pip3 install pycairo==1.11.1

echo "Installing PyGObject Version 3.30"
sudo apt install libglib2.0-dev
sudo apt install libgirepository1.0-dev
pip3 install pygobject==3.30

echo "Installing Tkinter"
sudo apt-get install python3-tk

echo "Installing GooCanvas"
sudo apt-get install gir1.2-goocanvas-2.0
