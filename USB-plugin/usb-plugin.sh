#!/bin/sh

mounting=$(echo "Mount\nUmount" | dmenu -i -c -l 2 -p "Action: ")
device_selection=$(lsblk -rno name,size,mountpoint | dmenu -i -c -l 5 -p "Choose Device: " | grep -o sd..)

if [ $mounting = "Mount" ]
then
    $(doas mkdir -p /media/$device_selection)
    $(doas ntfs-3g /dev/$device_selection /media/$device_selection)
fi

if [ $mounting = "Umount" ]
then
    $(doas umount -l /media/$device_selection)
   $(doas rm -rf /media/$device_selection)
fi
