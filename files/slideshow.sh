#!/bin/bash

# Create a ramdisk to store the images
mkdir /ram
mount -t tmpfs -o size=50M tmpfs /ram

# Disable power saving mode on the wifi adapter
iw wlan0 set power_save off


cd /var/carousel/images

while true;
    do for i in *;
        do cp $i /ram/slideshow.png; echo $i; sleep 45;
    done;
done
