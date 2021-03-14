#!/bin/bash

sudo add-apt-repository ppa:oem-solutions-group/nvidia-driver-staging
sudo apt update

ubuntu-drivers devices
echo Com a resposta desse comando acima, veja qual é a melhor versão para instalar a sua placa, aparecerá um recommended ao lado da versão recomendada. Coloque o nome da versão em um sudo apt install, como no exemplo abaixo.
read -n1 -r -p "Aperte qualquer tecla para continuar..."

# sudo apt install nvidia-driver-460
