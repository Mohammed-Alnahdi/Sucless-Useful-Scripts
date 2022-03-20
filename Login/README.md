### Login - Shoutdown, Reboot, and Logout
This script for quick poweroff, reboot, or exit your dwm. 

## Naming 
Login script named for opposite meaning, it is not logging in but logging out XD.

## Before Run Script
Before run script into dwm you must do the following:

### Install Doas Software

You can install *Doas* for action superuser command in script. 

- For Voidlinux: 

```bash
sudo xbps-install -S opendoas
```
- For Arch & Artix

```bash
sudo pacman -S opendoas
```

Then you can go to /etc to edit config file for *Doas* (file named /etc/doas.conf) and write the following to skip password.

``` readline-config
#This is skipping password for doas.
permit nopass :wheel
```

### Patch Dmenu
This script deal with _dmenu_ you can download it from [here](http://tools.suckless.org/dmenu/) then download the patch which make dmenu in center from [here](http://tools.suckless.org/dmenu/patches/center/) and download patch that make border from [here](http://tools.suckless.org/dmenu/patches/border/).

To make patch run the following command 

``` bash
patch -p1 < patch-file-name.diff
```

**NOTE**
Patch all alone file and make install by run command

``` bash
sudo cp config.def.h config.h
sudo make clean install
```

## Installing Script
To download the script run the command line:

``` bash
git clone --depth 1 https://github.com/Mohammed-Alnahdi/Sucless-Useful-Scripts/tree/main/Login ~/.config/Login
```

### Then give _login.sh_ the executable mode 

``` bash
chmod +x .config/Login/login.sh
```

### Edit DWM Config File
Go to dwm source and edit _config.def.h_ by adding in top: 

``` cpp-objdump
static const char *loginctl[] = {"/home/username/.config/Login/login.sh", NULL};
```
**Note**
username in path is user home directory that exsist _login.sh_.

### Add keybinding for shortcut:

``` cpp-objdump
	{ MODKEY|ShiftMask,             XK_l,      spawn,           {.v = loginctl} },
```

### Reinstall DWM
Finally, reinstall dwm.

``` bash
sudo cp config.def.h config.h
sudo make clean install
```

The command will active after logout from dwm. 
