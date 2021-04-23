#!/bin/bash

wget https://dl.genymotion.com/releases/genymotion-3.2.1/genymotion-3.2.1-linux_x64.bin

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

echo Caso esteja usando a versão 20.10 do Ubuntu, utilize CTRL+C, PARE O SCRIPT e depois abra o mesmo e descomente a linha que permite instalação no 20.10.
read -n1 -r -p "Aperte qualquer tecla para continuar..."
### Ubuntu 20.04 > Não descomentar essa linha
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"

### Ubuntu 20.10 > Não descomentar essa linha
#sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian focal contrib"

sudo apt-get update
sudo apt install -y virtualbox-6.1

chmod +x genymotion-3.2.1-linux_x64.bin
sudo ./genymotion-3.2.1-linux_x64.bin

echo Os próximos dois arquivos precisam ser colocados dentro da VM criada no Genymotion:
read -n1 -r -p "Aperte qualquer tecla para continuar..."
wget https://github.com/m9rco/Genymotion_ARM_Translation/raw/master/package/Genymotion-ARM-Translation_for_8.0.zip
wget https://ufpr.dl.sourceforge.net/project/opengapps/x86/20201223/open_gapps-x86-8.0-nano-20201223.zip
