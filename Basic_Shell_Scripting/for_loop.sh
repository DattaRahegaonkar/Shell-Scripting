#!/bin/bash


# Creating the folders by using for loop

<< comment
 doller 1 is folder name
 doller 2 is starting of for loop
 doller 3 is the ending of for loop

comment


for (( i=$2 ; i<=$3 ; i++  ))
do
	mkdir "$1$i"
done


