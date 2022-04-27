#!/bin/sh
#This Application will help to chage language layout
#Mohammed K Alnahdi; mohammed.alnahdi1991@gmail.com

toggle=$(echo "English\nArabic" | dmenu -i -c -l 3 -p "Choose Keyboard Layout: ")

case $toggle in
    English) setxkbmap "us";;
    Arabic) setxkbmap "ara(qwerty)";;
esac
