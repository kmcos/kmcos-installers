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
python3 MyFirstSnapshots.py
kmcos export MyFirstSnapshots.xml
cd MyFirstSnapshots_local_smart
kmcos benchmark
echo "if you see a printed line showing a certain number of steps/s, ten the benchmark test worked and your kmcos installation is complete!"
cd ..
cd ..
cd ..

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
#rm sudo-kmcos-install-dependencies-ubuntu.bash
