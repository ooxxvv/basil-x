#!/bin/sh
#######################################################################
# Copy/Zip theme files
#######################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"
working_path=$(pwd)

# Local variable
theme_path=./usr_share_themes
theme_name=Basil-X
install_path=/usr/share/themes
zip_path=~/Desktop

# Build Theme
mkdir -p $theme_path/$theme_name
python ./build-themes.py

# Install or Create
echo "============================================================"
read -p "(I)nstall theme or (C)reate zip file on Desktop (I/C) ? " ans
case $ans in
# Install
I)
    yes | sudo rm -r $install_path/$theme_name
    yes | sudo cp -r $theme_path/$theme_name $install_path/$theme_name
    echo 'Install completed.'
;;
# Create
C)
    cd $theme_path/$theme_name
    zip -FSr $zip_path/$theme_name ./*
    cd $working_path
    echo 'Create completed.'
;;
*)
    echo 'Do nothing.'
;;
esac

# Delete theme folder
rm -r $theme_path



