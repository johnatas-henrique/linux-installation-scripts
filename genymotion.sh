#!/bin/bash

wget https://dl.genymotion.com/releases/genymotion-3.3.1/genymotion-3.3.1-linux_x64.bin

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

echo Caso esteja usando a versão 20.10 do Ubuntu, utilize CTRL+C, PARE O SCRIPT e depois abra o mesmo e descomente a linha que permite instalação no 20.10.
read -n1 -r -p "Aperte qualquer tecla para continuar..."
### Ubuntu 20.04 > Não descomentar essa linha
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"

### Ubuntu 20.10 > Não descomentar essa linha
#sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian focal contrib"

sudo apt-get update
sudo apt install -y virtualbox-6.1

chmod +x genymotion-3.3.1-linux_x64.bin
sudo ./genymotion-3.3.1-linux_x64.bin
