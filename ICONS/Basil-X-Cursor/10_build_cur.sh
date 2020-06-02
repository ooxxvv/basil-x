#!/bin/sh
#############################################################################
# Create files (.cur) for icon theme
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"

target_folder=$1
config_folder=./config
png_prefix=$(pwd)

##################################################################### ANI ###
xcursorgen -p $png_prefix $config_folder/ani-background.config $target_folder/ani-background.cur
xcursorgen -p $png_prefix $config_folder/ani-busy.config       $target_folder/ani-busy.cur

##################################################################### CUR ###
xcursorgen -p $png_prefix $config_folder/a-pointer.config      $target_folder/a-pointer.cur
xcursorgen -p $png_prefix $config_folder/click-able.config     $target_folder/click-able.cur
xcursorgen -p $png_prefix $config_folder/drag-able.config      $target_folder/drag-able.cur
xcursorgen -p $png_prefix $config_folder/forbidden.config      $target_folder/forbidden.cur
xcursorgen -p $png_prefix $config_folder/mark-able.config      $target_folder/mark-able.cur
xcursorgen -p $png_prefix $config_folder/move-able.config      $target_folder/move-able.cur
xcursorgen -p $png_prefix $config_folder/size-H.config         $target_folder/size-H.cur
xcursorgen -p $png_prefix $config_folder/size-LR.config        $target_folder/size-LR.cur
xcursorgen -p $png_prefix $config_folder/size-RL.config        $target_folder/size-RL.cur
xcursorgen -p $png_prefix $config_folder/size-V.config         $target_folder/size-V.cur
xcursorgen -p $png_prefix $config_folder/something-else.config $target_folder/something-else.cur

