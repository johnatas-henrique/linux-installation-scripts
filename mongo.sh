#!/bin/bash

sudo apt install -y gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt update
sudo apt install -y mongodb-org

sudo service mongod start

### Caso queira que o servidor do Mongo seja carregado ao iniciar o PC, descomente a linha abaixo:
# sudo systemctl enable mongod.service
