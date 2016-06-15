#!/bin/bash
cp .config/autostart/lxterm-autostart.desktop ~/.config/autostart/lxterm-autostart.desktop
cp .homebridge/config.json ~/.homebridge/config.json
sudo cp etc/init.d/homebridge /etc/init.d/homebridge
sudo chmod 755 /etc/init.d/homebridge
sudo update-rc.d homebridge defaults
sudo /etc/init.d/homebridge restart
tail -f /var/log/homebridge.log
