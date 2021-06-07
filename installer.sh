#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install -y software-properties-common apt-transport-https wget git git-all mousepad

### Troque esses valores abaixo por suas informações
git config --global user.name "Johnatas Henrique"
git config --global user.email "johnatas.henrique@gmail.com"
git config --global core.editor "mousepad --wait"
git config --global pull.rebase false

# linhas para obrigar a utilizar SSH sempre
git config --global url."git@github.com:".insteadOf https://github.com/
git config --global url."git://".insteadOf https://

### Caso você tenha a sua chave SSH, coloque os arquivos dentro da pasta ~/.ssh antes de continuar
#eval "$(ssh-agent -s)"
#chmod 600 ~/.ssh/id_rsa
#ssh-add ~/.ssh/id_rsa

### Instalando os programas necessários para a Trybe
#./chrome.sh
#./zoom.sh
#./slack.sh
#./vscode.sh

### Programas e itens não obrigatórios (tudo está comentado, caso queira alguma coisa, descomente a linha e rode o script novamente
#sudo apt install -y steam fonts-firacode lm-sensors psensor
#./change-desktop-folder-name.sh
#./plank.sh
#./genymotion.sh

### Executar scripts com ENTER
#xfconf-query --channel thunar --property /misc-exec-shell-scripts-by-default --create --type bool --set true
