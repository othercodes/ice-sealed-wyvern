#!/bin/bash

echo -e "Installing ISW"
sudo install -Dm 644 etc/isw.conf /etc/isw.conf
sudo install -Dm 644 etc/modprobe.d/isw-ec_sys.conf /etc/modprobe.d/isw-ec_sys.conf
sudo install -Dm 644 etc/modules-load.d/isw-ec_sys.conf /etc/modules-load.d/isw-ec_sys.conf

sudo install -Dm 755 isw /usr/bin/isw

echo -e "Running ISW"
sudo isw -cw 16V1EMS1

echo -e "Registering on init"
systemctl enable isw@.16V1EMS1service
