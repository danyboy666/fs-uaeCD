#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rom="$1"

rootdir="/opt/retropie"
datadir="$HOME/RetroPie"
romdir="$datadir/roms/amigacd32"
savedir="/home/media/RetroPie/RetroPie-Saves/"
biosdir="$datadir/BIOS"
kickfile="$biosdir/CD32KICK31.ROM"
extfile="$biosdir/CD32EXT.ROM"
gamepad="gamepad"

fs-uae --amiga-model=CD32 --fullscreen=1 --zoom=auto  -–joystick-port-0-mode="$gamepad"  --kickstart_file="$kickfile" --kickstart_ext_file="$extfile" --save_states_dir="$savedir" --cdrom-drive-0="$rom"
