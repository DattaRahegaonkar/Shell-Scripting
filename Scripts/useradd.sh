#!/bin/bash


# Creating the useradd script 

# taking the username as argument in $1

sudo useradd -m $1

echo "the $1 user added"

echo "Thank you"
