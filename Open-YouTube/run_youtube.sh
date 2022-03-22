#!/bin/sh

link_youtube=$(xclip -o)

mpv all_formats=yes $link_youtube
