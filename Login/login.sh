#!/bin/sh

choise=$(echo "Shutdown\nReboot\nLogout" | dmenu -i -c -l 3 -p "Choose Prosodure: ")


if [ $choise = "Shutdown" ]
then
    $(doas poweroff)
fi

if [ $choise = "Reboot" ]
then
    $(doas reboot)
fi

if [ $choise = "Logout" ]
then
    $(doas pkill dwm)
fi

