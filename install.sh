#!/bin/bash

apt install -y build-essential dkms pve-headers

mkdir /usr/src/r8152-2.16.1/
cp -rv * /usr/src/r8152-2.16.1/
cp /usr/src/r8152-2.16.1/50-usb-realtek-net.rules /lib/udev/rules.d/

sudo dkms add -m r8152 -v 2.16.1
sudo dkms build -m r8152 -v 2.16.1
sudo dkms install -m r8152 -v 2.16.1
