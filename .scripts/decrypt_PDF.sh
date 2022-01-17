#! /usr/bin/bash

password=$1

for file in *; do 
	if [ "${file: -4}" == ".pdf" ]
	then
		qpdf --password="$password" --decrypt "$file" --replace-input
	fi
done
