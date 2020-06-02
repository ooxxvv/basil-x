#!/bin/sh
#############################################################################
# Installl Icon Theme
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"

theme_name=Basil-X-Icon
install_path=/usr/share/icons

################################################################# Process ###
if [ "$1" != "I" ]; then
  read -p "(I)nstall theme or (C)reate zip file on Desktop (I/C) ? " ans
else
  ans=$1
fi

if [ "$ans" = "I" ]; then
  echo "=== Install Icon ===================================================="
  sudo rm -rf  $install_path/$theme_name
  sudo mkdir -p $install_path/$theme_name
  yes | sudo cp -rf ./* $install_path/$theme_name
  sudo gtk-update-icon-cache --force $install_path/$theme_name
  echo 'Install icon theme completed.'
else
    echo 'Do nothing.'
fi


