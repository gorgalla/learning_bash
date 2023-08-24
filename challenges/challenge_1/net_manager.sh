#!/bin/bash
#Author: Gorka Gallardo - @gorgalla_
echo "Please select an option"
echo -e "\n1) Show connection info"
echo -e "\n2) Show active connections"
echo -e "\n3) Connect to a Wi-Fi network"
echo -e "\n4) Disconnect from a network"
echo -e "\n5) Exit"
echo -e "\n"
read option
case $option in
	1)
		echo "Option 1 selected"
		nmcli con show
		;;
	2)
		echo "Option 2 selected"
		nmcli con show --active
		;;
	3)
		echo "Option 3 selected"
		echo -e "\nEnter the name of the WiFi network: "
		read wifi_ssid
		echo -e "\nEnter the password of WiFi network: "
		read wifi_password
		nmcli device wifi connect "$wifi_ssid" password "$wifi_password"
		;;
	4)
		echo "Option 4 selected"
		echo "Enter the name of the network to disconnect: "
		read net_name
		nmcli con down "$net_name"
		;;
	5)
		echo "Leaving the program"
		exit 0
		;;
	*)
		echo "Invalid option"
		;;
esac
