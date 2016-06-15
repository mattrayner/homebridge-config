#!/bin/bash
echo 'Creatign Directories'
mkdir -p ~/.config/autostart/
mkdir -p ~/.homebridge

echo 'Copying Config Files'
cp .config/autostart/lxterm-autostart.desktop ~/.config/autostart/lxterm-autostart.desktop
cp .homebridge/config.json ~/.homebridge/config.json

echo 'Setting up HomeBridge auto-start'
sudo cp etc/init.d/homebridge /etc/init.d/homebridge
sudo chmod 755 /etc/init.d/homebridge
sudo update-rc.d homebridge defaults
sudo /etc/init.d/homebridge restart

echo 'Displaying Homebridge logs, press ctrl+c to close.'
echo 'Setup steps finished'
tail -f /var/log/homebridge.log
