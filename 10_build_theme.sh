#!/bin/sh
#############################################################################
# Build and Zip theme files
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"

working_dir=$(pwd)
build_dir=$working_dir/build

################################################################# Process ###
echo "=============== Check dependence and install =========================="
sudo apt install -y inkscape optipng sassc zip


echo "=============== Delete old build ======================================"
rm -r $build_dir

echo "=============== Build theme ==========================================="
mkdir -p $build_dir
python ./build-themes.py


