#!/bin/bash


# Checking the age is lies between teenager, younger, and older

# take the are as argument in $1

if [[ $1 -le 18 ]];
then
	echo "you are in teenager stage"
elif [[ $1 -gt 18 && $1 -le 30 ]];
then
	echo "you are in younger stage"
else
	echo "you are in older stage"
fi
