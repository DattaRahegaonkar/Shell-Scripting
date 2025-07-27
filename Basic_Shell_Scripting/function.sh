#!/bin/bash


# Checking the age is lies between teenager, younger, and older

# take the are as argument in $1

# function definition

function age_checker() {
if [[ $1 -le 18 ]];
then
	echo "$2 you are in teenager stage"
elif [[ $1 -gt 18 && $1 -le 30 ]];
then
	echo "$2 you are in younger stage"
else
	echo "$2 you are in older stage"
fi
}

age_checker $1 "hey"
