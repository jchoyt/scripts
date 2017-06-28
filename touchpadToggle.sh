#! /bin/bash

# Copyright (C) 2012  Jeffrey Hoyt
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Released under the WTFPL v2 or later (http://sam.zoy.org/wtfpl/) and the GPL v3 or later (http://www.gnu.org/copyleft/gpl.html)
# 

#
# This script toggles the on/off state of the touchpad on a KDE system.  
# It's been used and tested on a Dell E6520 running Kubuntu 11.04.  YMMV.
#
if [ $(synclient | grep TouchpadOff | awk '{print $3}') = 1 ]; then
	sudo synclient TouchpadOff=0;
else
	sudo synclient TouchpadOff=1;
fi
