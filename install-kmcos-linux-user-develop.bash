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
pip3 install wheel  --user
git clone -b develop http://www.github.com/kmcos/kmcos
cd kmcos
echo "Entering the kmcos directory to install kmcos."
pip3 install -r requirements.txt --user
python3 setup.py install --user
echo "Now doing the pip3 command."
pip3 install kmcos[MINIMAL] --upgrade --user
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
#rm sudo-kmcos-install-dependencies-ubuntu.bash
