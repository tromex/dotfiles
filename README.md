# i3
## Install i3 config
$ cd ~/.config/i3/ 
$ ln -s ~/dotfiles/i3/config

## Install i3 volume scripts
$ mkdir ~/.config/i3/scripts/ 
$ cd ~/.config/i3/scripts/ 
$ ln -s ~/dotfiles/i3/scripts/decrease_volume.sh
$ ln -s ~/dotfiles/i3/scripts/increase_volume.sh
$ ln -s ~/dotfiles/i3/scripts/mute.sh

## Install i3status config
$ mkdir ~/.config/i3status
$ cd ~/.config/i3status
$ ln -s ~/dotfiles/i3/i3status.conf config

## Install dwm
$ cp dotfiles/dwm.desktop usr/share/xsessions/dwm.desktop
