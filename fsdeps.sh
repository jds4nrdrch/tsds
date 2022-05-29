#!/bin/bash
sudo pacman -S --noconfirm --quiet ntfs-3g udisks2 btrfs-progs exfatprogs f2fs-tools dosfstools jfsutils cryptsetup lvm2 util-linux nilfs-utils xfsprogs && clear
clear



echo "2) fsdeps" >> ~/Downloads/i3ts/log.txt
sudo mv $HOME/Downloads/tsds/fsdeps.sh $HOME/Downloads/tsds/used/fsdeps.sh
