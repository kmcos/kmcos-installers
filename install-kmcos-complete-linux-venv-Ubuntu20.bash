#!/bin/bash -eu


echo "Simple wrapping script that resolves"
echo "dependency within the APT system"

cd ~
mkdir kmcosInstallation
cd kmcosInstallation
sudo apt-get update
sudo apt-get install gfortran
sudo apt-get install git
sudo apt-get install python3
sudo apt-get install python3-pip
pip3 install wheel  #--user
git clone http://www.github.com/kmcos/kmcos
cd kmcos
echo "Entering the kmcos directory to install kmcos."
pip3 install -r requirements.txt #--user
python3 setup.py install #--user
echo "Now doing the pip3 command."
pip3 install kmcos[MINIMAL] --upgrade #--user
echo "Now going to examples."
cd examples
python3 MyFirstSnapshots__build.py

cd MyFirstSnapshots_local_smart
python3 kmc_settings.py benchmark
echo "if you see a printed line showing a certain number of steps/s, ten the benchmark test worked and your kmcos installation is complete!"
cd ..
cd ..
cd ..

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
