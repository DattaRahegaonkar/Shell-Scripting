#!/bin/bash

# Deleting the user that pass as argument


sudo userdel -r $1

echo "the $1 user is deleted"

echo "Thank you"
