#!/bin/bash

apt update
apt upgrade

sudo apt install -y plank
mkdir ~/.config/autostart
cp plank.desktop ~/.config/autostart/plank.desktop
