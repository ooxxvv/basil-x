#!/bin/sh
#############################################################################
# Build and Copy/Zip theme files
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"

theme_name=Basil-X-Cursor
install_path=/usr/share/icons
zip_path=~/Desktop
temp_theme=~/Desktop/$theme_name

################################################################# Process ###
echo "=============== Copy config files ====================================="
mkdir -p $temp_theme/cursors/curFiles
cp index.theme $temp_theme
cp 20_link_cur.sh $temp_theme/cursors

echo "=============== Build & Link =========================================="
sh 10_build_cur.sh $temp_theme/cursors/curFiles
sh $temp_theme/cursors/20_link_cur.sh

echo "======================================================================="
read -p "(I)nstall theme or (C)reate zip file on Desktop (I/C) ? " ans

case $ans in
I)
  echo "=============== Install ============================================="
  sudo mkdir -p $install_path/$theme_name
  yes | sudo cp -rf $temp_theme/* $install_path/$theme_name
  rm -r $temp_theme
  echo 'Install completed.'
;;
C)
  echo "=============== Create =============================================="
  cd $temp_theme
  zip -FSr $zip_path/$theme_name ./*
  rm -r $temp_theme
  echo 'Create completed.'
;;
*)
    echo 'Do nothing.'
;;
esac


