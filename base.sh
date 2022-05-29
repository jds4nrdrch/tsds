#!/bin/bash

sudo pacman -S --needed --noconfirm --quiet polybar atom picom feh man-db alacritty btop neofetch base-devel fish mpv && clear
sudo chsh -s /usr/bin/fish $(whoami) &&clear
cd $HOME/Applications
git clone https://aur.archlinux.org/yay-bin.git && clear
sudo chmod 777 yay-bin && cd yay-bin && makepkg -si --noconfirm --noprogressbar && clear
cd $HOME/Applications
yay -S --noconfirm --needed --quiet rofi
clear
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
sudo chmod +x setup.sh
./setup.sh
clear

sudo rm -r -d ~/.config/i3/config
sudo rm -r -d /usr/share/fish/functions/fish_greeting.fish
sudo rm -r -d ~/.config/alacritty/alacritty.yml

sudo mv ~/Downloads/tsds/config ~/.config/i3/config

sudo mv ~/Downloads/tsds/config.ini ~/.config/polybar/config.ini

sudo mv ~/Downloads/tsds/picomconfig ~/.config/picom/config

sudo mv ~/Downloads/tsds/spaceguy.jpg ~/Pictures/spaceguy.jpg
sudo mv ~/Downloads/tsds/Baldurs-Gare-Dark-Alliance.jgp ~/Pictures/Baldurs-Gare-Dark-Alliance.jgp

sudo mv ~/Downloads/tsds/fish_greeting.fish /usr/share/fish/functions/fish_greeting.fish

sudo mv ~/Downloads/tsds/alacritty.yml ~/.config/alacritty/alacritty.yml




clear
cd ~/Applications
git clone --recurse-submodules https://github.com/fairyglade/ly.git && cd ly && clear
make && clear
sudo make install && sudo rm -r -d /etc/systemd/system/display-manager.service && clear
sudo systemctl enable ly.service


echo "1) base" >> ~/Downloads/i3ts/log.txt
