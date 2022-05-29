#!/bin/bash
sudo pacman -S --noconfirm --needed  qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
sudo pacman -S --noconfirm --needed libguestfs


sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

sudo rm -r -d /etc/libvirt/libvirtd.conf
sudo mv $HOME/Downloads/tsds/libvirtd.conf /etc/libvirt/libvirtd.conf
clear
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd.service
