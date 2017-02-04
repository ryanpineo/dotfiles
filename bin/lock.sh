#!/bin/bash
# TMPBG=/tmp/screen.png
# LOCK=$HOME/Dropbox/pictures/lock2.png
# RES=1920x1080

# ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "boxblur=4:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG
# i3lock -i $TMPBG -

i3lock --image=$HOME/pictures/winxp.png --pointer=win -u
