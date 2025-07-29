#!/bin/bash

# Handling the Errors using if__then__

creating_directory() {

	if [[ -d "$1" ]];
	then
		echo "Directory already Exit, with $1"
		return 1
	else
		echo "Creating a Directory with the name $1"
		mkdir $1
	fi
}

if ! creating_directory "$1" ;
then
	echo "Directory exit"
	exit 1
else
	echo "Created Successfully !"
fi
