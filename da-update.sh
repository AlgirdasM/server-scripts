#!/bin/bash
apt update && apt upgrade
cd /usr/local/directadmin/custombuild
./build update
./build versions

echo "Press y & press enter to update or just press enter to exit"

read input

if [[ $input = "y" ]] || [[ $input = "Y" ]]
then
	./build update_versions
else
	echo "Bye :)"
fi