#!/bin/bash

#====================================#
#           CHECK FOR ROOT           #
#====================================#

clear
if [ "$EUID" -ne 0 ]
  then
  echo "Only a non-root user can activate and de-activate NordVPN"
fi

#====================================#
#              FUNCTIONS             #
#====================================#

splash(){
	echo " "
	echo -e "\e[33m███╗   ██╗ ██████╗ ██████╗ ██████╗ ███████╗██████╗ \e[0m";
	sleep 0.03
	echo -e "\e[33m████╗  ██║██╔═══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗\e[0m";
	sleep 0.03
	echo -e "\e[33m██╔██╗ ██║██║   ██║██████╔╝██║  ██║█████╗  ██████╔╝\e[0m";
	sleep 0.03
	echo -e "\e[33m██║╚██╗██║██║   ██║██╔══██╗██║  ██║██╔══╝  ██╔══██╗\e[0m";
	sleep 0.03
	echo -e "\e[33m██║ ╚████║╚██████╔╝██║  ██║██████╔╝███████╗██║  ██║\e[0m";
	sleep 0.03
	echo -e "\e[33m╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝\e[0m";
	sleep 0.03
	echo "                                                   ";
	sleep 0.03
	echo " "
}

credits(){
	echo " "
	sleep 0.03
	echo -e "\e[32m██████╗ ██╗   ██╗                                                  \e[0m";
	sleep 0.03
	echo -e "\e[32m██╔══██╗╚██╗ ██╔╝                                                  \e[0m";
	sleep 0.03
	echo -e "\e[32m██████╔╝ ╚████╔╝                                                   \e[0m";
	sleep 0.03
	echo -e "\e[32m██╔══██╗  ╚██╔╝                                                    \e[0m";
	sleep 0.03
	echo -e "\e[32m██████╔╝   ██║                                                     \e[0m";
	sleep 0.03
	echo -e "\e[32m╚═════╝    ╚═╝                                                     \e[0m";
	sleep 0.03
	echo "                                                                   ";
	sleep 0.03
	echo -e "\e[34m███╗   ███╗ █████╗      ██╗██╗██╗  ██╗     ██████╗ █████╗ ████████╗\e[0m";
	sleep 0.03
	echo -e "\e[34m████╗ ████║██╔══██╗     ██║██║██║ ██╔╝    ██╔════╝██╔══██╗╚══██╔══╝\e[0m";
	sleep 0.03
	echo -e "\e[34m██╔████╔██║███████║     ██║██║█████╔╝     ██║     ███████║   ██║   \e[0m";
	sleep 0.03
	echo -e "\e[34m██║╚██╔╝██║██╔══██║██   ██║██║██╔═██╗     ██║     ██╔══██║   ██║   \e[0m";
	sleep 0.03
	echo -e "\e[34m██║ ╚═╝ ██║██║  ██║╚█████╔╝██║██║  ██╗    ╚██████╗██║  ██║   ██║   \e[0m";
	sleep 0.03
	echo -e "\e[34m╚═╝     ╚═╝╚═╝  ╚═╝ ╚════╝ ╚═╝╚═╝  ╚═╝     ╚═════╝╚═╝  ╚═╝   ╚═╝   \e[0m";
	sleep 0.03
	echo "                                                                   ";
	sleep 0.03
	echo " "
	sleep 3
}

#====================================#
#           PRE MENU SETUP           #
#====================================#

options=("Activate NordVPN" "DeActivate NordVPN" "Credits" "Quit")

PS3=':--> '
while [ "$menu" != 1 ]; do
clear
splash
select opt in "${options[@]}" ; do
        case $opt in

#====================================#
#              MAIN MENU             #
#====================================#

	"Activate NordVPN")
		clear
		splash
		echo "Attempting to connect NordVPN"
		nordvpn connect
		sleep 0.03
		clear
	break
	;;

	"DeActivate NordVPN")
		clear
		splash
		echo "Attempting to disconnect NordVPN"
		nordvpn disconnect
		sleep 0.03
		clear
	break
	;;

        "Credits")
                clear
                splash
                credits
        break
        ;;

        "Quit")
                clear
                splash
                echo -e " "
                echo -e "Thanks for using Norder by Majik Cat Security - Aug 2019"
                echo -e "GitHub: https://github.com/hwac121"
                sleep 3
                clear
                menu=1
        break
        ;;

                        *)
                                clear
                                splash
                                echo -e "invalid option $REPLY"
                                sleep 3
                		break
                		;;
                esac
        done
done

exit 0
