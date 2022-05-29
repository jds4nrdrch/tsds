#!/bin/bash
sudo pacman -S --noconfirm --quiet os-prober
sudo os-prober
clear
sudo rm -r -d /etc/default/grub
sudo mv ~/Downloads/tsds/grub /etc/default/grub
clear
sleep 0.2s
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "5) grub config" >> ~/Downloads/i3ts/log.txt
