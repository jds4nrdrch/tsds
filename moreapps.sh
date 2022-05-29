#!/bin/bash
PS3='Choose an option: '
options=("alacritty themes" "didyoumean" "bitwaden" "i3 swallow" "ksnip" "kvm" "everything" "Exit")
select fav in "${options[@]}"; do
    case $fav in
        "alacritty themes")
						echo "3) get more apps" >> $HOME/Downloads/tsds/tog.txt
            yay -S --noconfirm --needed alacritty-themes
            echo ">>1) alacritty themes" >> $HOME/Downloads/tsds/tog.txt
						cd $HOME/Downloads/tsds
						./cec2.sh
						echo ">last chosen option: 1) alacritty themes"

            ;;
        "didyoumean")
            yay -S --noconfirm --needed didyoumean-bin
            echo ">>2) didyoumean" >> $HOME/Downloads/tsds/tog.txt
						cd $HOME/Downloads/tsds
						./cec2.sh
						echo ">last chosen option: 2) didyoumean"
            ;;
        "bitwaden")
            yay -S --noconfirm --needed bitwarden-git
            echo ">>3) bitwarden" >> $HOME/Downloads/tsds/tog.txt
						cd $HOME/Downloads/tsds
						./cec2.sh
						echo ">last chosen option: 3) bitwarden"


            ;;
        "i3 swallow")
            yay -S --noconfirm --needed i3-swallow-git
            echo ">>4) i3 swallow " >> $HOME/Downloads/tsds/tog.txt

					  cd $HOME/Downloads/tsds
						./cec2.sh
						echo ">last chosen option: 4) i3 swallow"

            ;;
        "ksnip")
            yay -S --noconfirm --needed ksnip-git
            echo ">>5) ksnip" >> $HOME/Downloads/tsds/tog.txt

						cd $HOME/Downloads/tsds
						./cec2.sh
						echo ">last chosen option: 5) ksnip"




            ;;
        "kvm, qemu & friends")
            cd $HOME/Downloads/tsds/
            ./kvm.sh
            echo ">>6) kvm" >> $HOME/Downloads/tsds/tog.txt

            ;;
			  "everything")
						yay -S --noconfirm --needed alacritty-themes
						yay -S --noconfirm --needed didyoumean-bin
						yay -S --noconfirm --needed bitwarden-git
						yay -S --noconfirm --needed i3-swallow-git
						yay -S --noconfirm --needed ksnip-git
						echo ">>7) everything" >> $HOME/Downloads/tsds/tog.txt

        "Exit")
              clear

		            echo "going back"



	              exit
	              ;;
        *) echo "invalid option $REPLY";;
    esac
done

sudo mv $HOME/Downloads/tsds/moreapps.sh $HOME/Downloads/tsds/used/moreapps.sh
