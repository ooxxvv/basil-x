#!/bin/sh
#############################################################################
# Build and Copy/Zip theme files
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"
working_dir=$(pwd)

theme_dir=$working_dir/build
theme_name=Basil-X
install_dir=/usr/share/themes
zip_dir=~/Desktop

################################################################# Process ###
echo "=============== Install or Create ====================================="
read -p "(I)nstall builded theme or (C)reate zip file on Desktop (I/C)? " input_value

case $input_value in
I)
  echo "=============== Install ============================================="
  yes | sudo rm -r $install_dir/$theme_name
  yes | sudo cp -r $theme_dir/$theme_name $install_dir/$theme_name
  echo 'Install completed.'
;;
C)
  echo "=============== Create =============================================="
  cd $theme_dir/$theme_name
  zip -FSr $zip_dir/$theme_name ./*
  cd $working_dir
  echo 'Create completed.'
;;
*)
  echo 'Do nothing.'
;;
esac


