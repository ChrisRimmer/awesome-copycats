#!/usr/bin/sh

function runonce {
  ! pgrep $1 ;
  then
    $@&
  fi
}

function hide {
  $@& &!
}

killall compton
killall mpd
killall ashuffle
killall xwinwrap
killall kunst
killall xst

hide runonce compton
hide runonce mpd
hide bluetoothctl -- connect 34:DF:2A:37:F8:88
hide runonce ashuffle --queue_buffer 7
hide runonce xwinwrap -g 1920x1080 -ov -- mpv -wid WID /home/cr/video/walls --shuffle --loop-playlist=inf --mute --really-quiet --osd-level=0 --no-osd-bar --osc=no
hide runonce kunst
hide xst -e htop
hide xst
hide xst -e ncmpcpp
hide xst
hide xst

