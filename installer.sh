#!/bin/bash

echo "Installing Padbury Linux..."

sudo apt update
sudo apt install -y python3 python3-tk xautolock

mkdir -p ~/.padbury
mkdir -p ~/.local/share/fonts
mkdir -p ~/.config/autostart

cp padbury.py ~/.padbury/
cp fonts/Montserrat-ExtraLight.ttf ~/.local/share/fonts/

fc-cache -fv > /dev/null

cat > ~/.config/autostart/padbury.desktop << EOF
[Desktop Entry]
Type=Application
Name=Padbury Linux
Exec=xautolock -time 5 -locker "python3 $HOME/.padbury/padbury.py"
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
EOF

chmod +x ~/.padbury/padbury.py

echo ""
echo "================================="
echo "Padbury Linux installed!"
echo "Restart your session to apply."
echo "================================="
