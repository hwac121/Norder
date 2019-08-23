#!/bin/bash

#=================================#
#          CHECK FOR ROOT         #
#=================================#

if [ "$EUID" -ne 0 ]
  then
  echo "I recommend you run as root..."
  exit
fi

#=================================#
#            FUNCTIONS            #
#=================================#

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
	echo "Version 1.0"
	sleep 0.03
	echo "Visit www.majikcat.com"
	sleep 3
}

#=================================#
#     CHECK FOR REQUIREMENTS      #
#=================================#

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' nordvpn | grep "install ok installed")
echo Checking for nordvpn: $PKG_OK
if [ "" == "$PKG_OK" ]; then
  echo "Nordvpn not installed. You must have Nordvpn installed to use this application properly."
fi

#=================================#
#        APPLICATION SETUP        #
#=================================#

clear
splash
echo " "
echo "Setting permissions for application and making global"
sleep 0.05
chmod +x nvpn.sh
sleep 0.05
cp nvpn.sh /bin/nvpn
sleep 0.05
chmod +x /bin/nvpn
sleep 0.05
echo " "
sleep 0.05
credits
sleep 0.05
echo " "
echo "Installation is complete!"
sleep 0.05
echo " "
echo "Type nvpn anywhere in terminal to activate"
sleep 3
clear
