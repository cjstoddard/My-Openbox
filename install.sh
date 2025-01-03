#!/bin/sh
set -e
sudo apt install xorg xbacklight xbindkeys xvkbd xinit xinput xserver-xorg-input-all xterm openbox obconf dunst dbus-x11 feh \
hsetroot i3lock libnotify-bin libxcb-xinerama0 lxappearance lximage-qt menu picom rofi scrot tint2 volumeicon-alsa \
xfce4-power-manager alsa-utils fonts-dejavu fonts-firacode fonts-font-awesome fonts-liberation2 fonts-jetbrains-mono \
gtk2-engines-murrine gtk2-engines-pixbuf network-manager network-manager-gnome papirus-icon-theme pavucontrol pipewire-audio \
qt5-style-plugins pcmanfm conky lightdm -y

## Please review the next line. These are the applications I use regularly or reasonable replacements.
## For instance, my prefernce for terminal software Kitty, if you prefer a different terminal, by all
## means replace it. If you don't like emacs, install neovim, whatever works for you.

sudo apt install firefox-esr audacious thunderbird vlc emacs abiword gnumeric atril pluma mate-calc kitty inkscape -y

sudo systemctl enable lightdm
sudo cp lightdm-gtk-greeter.conf /etc/lightdm/
sudo chown root:root /etc/lightdm/lightdm-gtk-greeter.conf
sudo mkdir /usr/share/backgrounds
sudo cp angel.jpg /usr/share/backgrounds/
sudo chown root:root /usr/share/backgrounds/angel.jpg

systemctl --user --now enable wireplumber.service
mkdir -p ~/.config/openbox ~/.config/rofi ~/pixmaps
cp /etc/xdg/openbox/* ~/.config/openbox/
cp rc.xml ~/.config/openbox/
cp autostart ~/.config/openbox/
cp x.xinitrc ~/.xinitrc
cp config.rasi ~/.config/rofi/
cp angel.jpg ~/pixmaps/
cp x.conkyrc ~/.conkyrc
cp x.keys.txt ~/.keys.txt
cp x.i3lock.png ~/.i3lock.png
chmod +x ~/.config/openbox/autostart
feh --bg-scale ~/pixmaps/angel.jpg

cat done.txt
