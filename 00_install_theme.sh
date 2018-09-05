#######################################################################
# Copy/Zip theme files
#######################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"

# Local variable
theme_name=Basil-X
install_path=/usr/share/themes
zip_path=~/Desktop

# Install or Create
read -p "(I)nstall theme or (C)reate zip file on Desktop (I/C) ? " ans

case $ans in
# Install
I)
    sudo mkdir -p $install_path/$theme_name
    yes | sudo cp -r ./* $install_path/$theme_name
    echo 'Install completed.'
;;
# Create
C)
    zip -FSr $zip_path/$theme_name ./*
    echo 'Create completed.'
;;
*)
    echo 'Do nothing.'
;;
esac


