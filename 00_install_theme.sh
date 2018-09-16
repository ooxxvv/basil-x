#!/bin/sh
#######################################################################
# Build and Copy/Zip theme files
#######################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"
working_path=$(pwd)

# Local variable
theme_path=./usr_share_themes
theme_name=Basil-X
install_path=/usr/share/themes
zip_path=~/Desktop

# Install or Create
echo "============================================================"
read -p "(I)nstall theme or (C)reate zip file on Desktop (I/C) ? " after_build

################################################## Install dependence #
echo "============================================================"
read -p "Check dependence and install (y/n) ? " ans
if [ "$ans" = "y" ]; then
    sudo apt install -y inkscape optipng sassc zip
fi

######################################################### Build Theme #
echo "============================================================"
mkdir -p $theme_path/$theme_name
python ./build-themes.py

################################################# Install/Create theme #
echo "============================================================"
case $after_build in
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
    echo 'Create completed.'
;;
*)
    echo 'Build finished.'
;;
esac

################################################## Delete temp folder #
cd $working_path
rm -r $theme_path

