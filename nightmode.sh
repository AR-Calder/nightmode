#!/bin/bash

# This toggles between two wallpapers to create a "nightmode" effect
CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DAYNIGHT=/$CURR_DIR/.daynight

if [ ! -e $DAYNIGHT ]; then
	PATTERN="$CURR_DIR/NIGHT.*"
	FILE=($PATTERN)
	touch $DAYNIGHT
	gsettings set org.gnome.desktop.background picture-uri file:///${FILE[0]}
else
	PATTERN="$CURR_DIR/DAY.*"
	FILE=($PATTERN)
	rm $DAYNIGHT
	gsettings set org.gnome.desktop.background picture-uri file:///${FILE[0]}
fi

#echo ${FILE[0]}
