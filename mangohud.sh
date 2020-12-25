#!/bin/bash

git clone --recurse-submodules https://github.com/flightlessmango/MangoHud.git
cd MangoHud
./build.sh build
./build.sh package
echo Caso seu sistema precise de dependências, você será avisado aqui, instale-as!
read -n1 -r -p "Aperte qualquer tecla para continuar..."
./build.sh install

sudo apt install -y libqt5pas1 vulkan-tools
wget http://ftp.us.debian.org/debian/pool/main/g/goverlay/goverlay_0.4.3-1_amd64.deb
sudo dpkg -i goverlay_0.4.3-1_amd64.deb
