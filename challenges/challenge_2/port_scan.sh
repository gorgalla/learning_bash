#!/bin/bash
#Author: Gorka Gallardo - gorgalla_
green="\e[32m"
reset="\e[0m"
show_instructions()
{
	echo -e "${green} Use:${reset}$0 <host> [${green}range${reset}<start_port> || <final_port>]"
	echo -e "\nExample: $0 target.com 10-80"
}
if [ $# -eq 0 ]; then
	show_instructions
	exit 1
fi
host="$1"
default_start_port=1
default_final_port=100
if [ $# -eq 3 ]; then
	start_port="$2"
	final_port="$3"
fi
scan_range()
{
	host="$1"
	start_port="$2"
	final_port="$3"
	for ((port = start_port; port <= final_port; port++)); do
		timeout 1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo -e "${green}Port $port open${reset}" || echo "Port $port close"
done
}
show_instructions
scan_range "$host" "$start_port" "$final_port"
