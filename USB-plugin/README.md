### USB-Plugin
tools to Mount and Un-mount Hard-Drive and USB Flash

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
### Install NTFS-3G
*ntfs-3g* is tools for reading flash or Hard-Drive that inclued Network Filesystem that run in Microsoft Windows.

- For Voidlinux: 

```bash
sudo xbps-install -S ntfs-3g
```
- For Arch & Artix

```bash
sudo pacman -S ntfs-3g
```
## Installing

### Download The Script

``` bash
git clone https://github.com/Mohammed-Alnahdi/Sucless-Useful-Scripts.git 
```


### Then give _usb-plugin.sh_ the executable mode 

``` bash
chmod +x usb-plugin.sh
```

### Edit Config file DWM 

``` cpp-objdump
static const char *mountctl[] = {"/Your/PATH/usb-plugin.sh", NULL};
```

**Note**
Just put the path of _usb-plugin.sh_.

### Then Adding Keybinding 

``` cpp-objdump
	{ MODKEY|ShiftMask,             XK_m,      spawn,           {.v = mountctl} },
```

### Reinstall DWM 

``` bash
sudo cp config.def.h config.h
sudo make clean install
```
