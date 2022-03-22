### Open_YouTube
This script for open YouTube into mpv 


## Before Run Script
Before run script into dwm you must do the following:

### Install Xclip Software

You can install *xclip* for copy and pass. 

- For Voidlinux: 

```bash
sudo xbps-install -S xclip
```
- For Arch & Artix

```bash
sudo pacman -S xclip
```


### install MPV
You must install mpv for runnig Video


- For Voidlinux: 

```bash
sudo xbps-install -S mpv
```
- For Arch & Artix

```bash
sudo pacman -S mpv
```


## Installing Script
To download the script run the command line:

``` bash
git clone https://github.com/Mohammed-Alnahdi/Sucless-Useful-Scripts.git 
```

### Then give _login.sh_ the executable mode 

``` bash
chmod +x run_youtube.sh
```

### Edit DWM Config File
Go to dwm source and edit _config.def.h_ by adding in top: 

``` cpp-objdump
static const char *Open_YouTube[] = {"/Your/Path/run_youtube.sh", NULL};
```
**Note**
Just put the path of _run_youtube.sh_.

### Add keybinding for shortcut:

``` cpp-objdump
	{ MODKEY|ShiftMask,             XK_y,      spawn,           {.v = Open_YouTube} },
```

### Reinstall DWM
Finally, reinstall dwm.

``` bash
sudo cp config.def.h config.h
sudo make clean install
```

The command will active after logout from dwm. 

## Usage
Copy any  vedio link from youtube and press the keybinding.  
