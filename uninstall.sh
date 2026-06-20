#!/bin/bash

echo "Removing Padbury Linux..."

pkill xautolock
pkill -f padbury.py

rm -rf ~/.padbury

rm -f ~/.config/autostart/padbury.desktop

rm -f ~/.local/share/fonts/Montserrat-ExtraLight.ttf

fc-cache -fv > /dev/null

echo ""
echo "================================="
echo "Padbury Linux removed!"
echo "================================="
