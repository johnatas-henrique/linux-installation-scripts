#!/bin/bash

mv ~/"Área de Trabalho" ~/Desktop

sed -i '/DESKTOP/ c XDG_DESKTOP_DIR="$HOME/Desktop"' ~/.config/user-dirs.dirs

xdg-user-dirs-update

echo Ao finalizar esse script, reinicie o sistema!
