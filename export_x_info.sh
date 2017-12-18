#!/bin/bash
#export dbus session on startup so shit don't fuck up
touch $HOME/.Xdbus
chmod 600 $HOME/.Xdbus
env | grep DBUS_SESSION_BUS_ADDRESS > $HOME/.Xdbus
echo 'export DBUS_SESSION_ADDRESS' >> $HOME/.Xdbus
#export xauth on startup so shit don't fuck up
env | grep XAUTHORITY >> $HOME/.Xdbus
echo 'export XAUTHORITY' >> $HOME/.Xdbus

