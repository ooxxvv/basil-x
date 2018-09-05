#######################################################################
# Copy theme files into /usr/share/themes/
#######################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"

# Local variable
theme_name=Basil-X
install_path=/usr/share/themes
zip_path=~/Desktop

# Install or Create
read -p "(1)Install theme or (2)Create zip file on Desktop (1/2) ? " ans

case $ans in
# Install
1)
    sudo mkdir -p $install_path/$theme_name
    yes | sudo cp -r ./* $install_path/$theme_name
    echo 'Install completed.'
;;
# Create
2)
    zip -FSr $zip_path/$theme_name ./*
    echo 'Create completed.'
;;
*)
    echo 'Do nothing.'
;;
esac


