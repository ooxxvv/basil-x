#!/bin/sh
#############################################################################
# Build and Copy/Zip theme files
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
working_path=$(pwd)

theme_path=./usr_share_themes
theme_name=Basil-X
install_path=/usr/share/themes
zip_path=~/Desktop

################################################################# Process ###
echo "=============== Install or Create ====================================="
read -p "Build & (I)nstall theme or (C)reate zip file on Desktop (I/C) ? " after_build

echo "=============== Check dependence and install =========================="
sudo apt install -y inkscape optipng sassc zip

echo "=============== Build theme ==========================================="
mkdir -p $theme_path/$theme_name
python ./build-themes.py

case $after_build in
I)
  echo "=============== Install ============================================="
  yes | sudo rm -r $install_path/$theme_name
  yes | sudo cp -r $theme_path/$theme_name $install_path/$theme_name
  echo 'Install completed.'
;;
# Create
C)
  echo "=============== Create =============================================="
  cd $theme_path/$theme_name
  zip -FSr $zip_path/$theme_name ./*
  echo 'Create completed.'
;;
*)
  echo 'Build finished.'
;;
esac

echo "=============== Delete temp fiels ====================================="
cd $working_path
rm -r $theme_path

