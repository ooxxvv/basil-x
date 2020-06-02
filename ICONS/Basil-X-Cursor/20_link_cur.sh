#!/bin/sh
#############################################################################
# Link .cur to each file name of cursor theme
############################################ Working Directory & Variable ###
cd "$(dirname "$0")"

################################################################ ani-busy ###
cur_file=curFiles/ani-busy.cur
###### wait
ln -sf $cur_file wait
ln -sf $cur_file watch
ln -sf $cur_file clock
ln -sf $cur_file 0426c94ea35c87780ff01dc239897213

########################################################## ani-background ###
cur_file=curFiles/ani-background.cur
###### half-busy
ln -sf $cur_file half-busy
ln -sf $cur_file progress
ln -sf $cur_file left_ptr_watch
ln -sf $cur_file 00000000000000020006000e7e9ffc3f
ln -sf $cur_file 08e8e1c95fe2fc01f976f1e063a24ccd
ln -sf $cur_file 3ecb610c1bf2410f44200f48c40d3599
ln -sf $cur_file 9116a3ea924ed2162ecab71ba103b17f

############################################################### a-pointer ###
cur_file=curFiles/a-pointer.cur
###### default mouse cursor pointing left
ln -sf $cur_file default
ln -sf $cur_file left_ptr
ln -sf $cur_file top_left_arrow
ln -sf $cur_file left-arrow

############################################################## click-able ###
cur_file=curFiles/click-able.cur
###### pointer (hand)
ln -sf $cur_file pointer
ln -sf $cur_file pointing_hand
ln -sf $cur_file hand
ln -sf $cur_file hand1
ln -sf $cur_file e29285e634086352946a0e7090d73106
###### alternative pointer
ln -sf $cur_file hand2
###### help
ln -sf $cur_file help
ln -sf $cur_file question_arrow
ln -sf $cur_file whats_this
ln -sf $cur_file gumby
ln -sf $cur_file 5c6cd98b3f3ebcb1f9c7f1c204630408
ln -sf $cur_file d9ce0ab605698f320427677b458ad60b
###### create link/shortcut
ln -sf $cur_file link
ln -sf $cur_file alias
ln -sf $cur_file 0876e1c15ff2fc01f906f1c363074c0f
ln -sf $cur_file 3085a0e285430894940527032f8b26df
ln -sf $cur_file 640fb0e74195791501fd1ed57b41487f
ln -sf $cur_file a2a266d0498c3104214a47bd64ab0fc8
###### zoom
ln -sf $cur_file zoom
###### zoom in
ln -sf $cur_file zoom-in
ln -sf $cur_file zoom_in
ln -sf $cur_file f41c0e382c94c0958e07017e42b00462
###### zoom out
ln -sf $cur_file zoom-out
ln -sf $cur_file zoom_out
ln -sf $cur_file f41c0e382c97c0938e07017e42800402

############################################################### drag-able ###
cur_file=curFiles/drag-able.cur
###### drag-and-drop to create link and other functions
ln -sf $cur_file dnd-link
ln -sf $cur_file dnd-ask
ln -sf $cur_file dnd-move
ln -sf $cur_file dnd-none
ln -sf $cur_file dnd-copy
###### copy
ln -sf $cur_file copy
ln -sf $cur_file 08ffe1cb5fe6fc01f906f1c063814ccf
ln -sf $cur_file 1081e37283d90000800003c07f3ef6bf
ln -sf $cur_file 6407b0e94181790501fd1e167b474872
ln -sf $cur_file b66166c04f8c3109214a4fbd64a50fc8
###### grabbed
ln -sf $cur_file closedhand
ln -sf $cur_file grabbing
ln -sf $cur_file 208530c400c041818281048008011002
###### can grab
ln -sf $cur_file openhand
ln -sf $cur_file 5aca4d189052212118709018842178c0
ln -sf $cur_file 9d800788f1b08800ae810202380a0822

############################################################### mark-able ###
cur_file=curFiles/mark-able.cur
###### text: I-beam
ln -sf $cur_file text
ln -sf $cur_file ibeam
ln -sf $cur_file xterm
###### text: vertical I-beam
ln -sf $cur_file vertical-text
ln -sf $cur_file 048008013003cff3c00c801001200000
###### text: crosshair	crosshair
ln -sf $cur_file crosshair
###### pencil
ln -sf $cur_file pencil
###### cursor pointing right
ln -sf $cur_file arrow
ln -sf $cur_file right_ptr
ln -sf $cur_file top_right_arrow
ln -sf $cur_file right-arrow

############################################################### forbidden ###
cur_file=curFiles/forbidden.cur
###### forbidden
ln -sf $cur_file forbidden
ln -sf $cur_file not-allowed
ln -sf $cur_file crossed_circle
ln -sf $cur_file 03b6e0fcb3499374a867c041f52298f0
ln -sf $cur_file circle
###### drag-and-drop forbidden
ln -sf $cur_file dnd-no-drop
ln -sf $cur_file no-drop
ln -sf $cur_file 03b6e0fcb3499374a867c041f52298f0
ln -sf $cur_file 03b6e0fcb3499374a867d041f52298f0
###### pirate/kill
ln -sf $cur_file pirate
ln -sf $cur_file kill

############################################################### move-able ###
cur_file=curFiles/move-able.cur
###### resize all
ln -sf $cur_file size_all
###### move
ln -sf $cur_file move
ln -sf $cur_file fleur
ln -sf $cur_file 4498f0e0c1937ffe01fd06f973665830
ln -sf $cur_file 9081237383d90e509aa00f00170e968f
ln -sf $cur_file fcf21c00b30f7e3f83fe0dfd12e71cff

################################################################# sizer-V ###
cur_file=curFiles/size-V.cur
###### resize NS |
ln -sf $cur_file ns-resize
ln -sf $cur_file size_ver
ln -sf $cur_file v_double_arrow
ln -sf $cur_file double_arrow
ln -sf $cur_file 00008160000006810000408080010102
###### resize N /\
ln -sf $cur_file n-resize
ln -sf $cur_file top_side
###### resize S \/
ln -sf $cur_file s-resize
ln -sf $cur_file bottom_side
###### resize row
ln -sf $cur_file row-resize
ln -sf $cur_file sb_v_double_arrow
ln -sf $cur_file 2870a09082c103050810ffdffffe0204
ln -sf $cur_file c07385c7190e701020ff7ffffd08103c
ln -sf $cur_file split_v

###### TK arrow
ln -sf $cur_file bottom_tee
ln -sf $cur_file top_tee

################################################################# sizer-H ###
cur_file=curFiles/size-H.cur
###### resize EW -
ln -sf $cur_file ew-resize
ln -sf $cur_file size_hor
ln -sf $cur_file h_double_arrow
ln -sf $cur_file 028006030e0e7ebffc7f7070c0600140
###### resize E >
ln -sf $cur_file e-resize
ln -sf $cur_file right_side
###### resize W <
ln -sf $cur_file w-resize
ln -sf $cur_file left_side
###### resize column
ln -sf $cur_file col-resize
ln -sf $cur_file sb_h_double_arrow
ln -sf $cur_file 043a9f68147c53184671403ffa811cc5
ln -sf $cur_file 14fef782d02440884392942c11205230
ln -sf $cur_file split_h

###### TK arrow
ln -sf $cur_file right_tee
ln -sf $cur_file left_tee

################################################################ sizer-LR ###
cur_file=curFiles/size-LR.cur
###### resize NW \
ln -sf $cur_file nw-resize
ln -sf $cur_file top_left_corner
###### resize SE \
ln -sf $cur_file se-resize
ln -sf $cur_file bottom_right_corner
###### resize diag \
ln -sf $cur_file size_fdiag
ln -sf $cur_file nwse-resize
ln -sf $cur_file 38c5dff7c7b8962045400281044508d2
ln -sf $cur_file c7088f0f3e6c8088236ef8e1e3e70000

################################################################ sizer-RL ###
cur_file=curFiles/size-RL.cur
###### resize NE /
ln -sf $cur_file ne-resize
ln -sf $cur_file top_right_corner
###### resize SW /
ln -sf $cur_file sw-resize
ln -sf $cur_file bottom_left_corner
###### resize diag /
ln -sf $cur_file size_bdiag
ln -sf $cur_file nesw-resize
ln -sf $cur_file 50585d75b494802d0151028115016902
ln -sf $cur_file fcf1c3c7cd4491d801f1e1c78f100000

########################################################## something-else ###
cur_file=curFiles/something-else.cur
###### scroll in all directions
ln -sf $cur_file all-scroll
###### cursor pointing up
ln -sf $cur_file center_ptr
###### up arrow
ln -sf $cur_file up_arrow
###### color picker
ln -sf $cur_file color-picker
###### cross - target cursor
ln -sf $cur_file cross
ln -sf $cur_file diamond_cross
ln -sf $cur_file target
###### cell target
ln -sf $cur_file cell
###### plus icon
ln -sf $cur_file plus
###### X11 icon
ln -sf $cur_file X_cursor
ln -sf $cur_file X-cursor
###### cursor with context menu emblem
ln -sf $cur_file context-menu
ln -sf $cur_file 08ffe1e65f80fcfdf9fff11263e74c48
###### TK arrow
ln -sf $cur_file sb_right_arrow
ln -sf $cur_file sb_left_arrow
ln -sf $cur_file sb_up_arrow
ln -sf $cur_file sb_down_arrow


