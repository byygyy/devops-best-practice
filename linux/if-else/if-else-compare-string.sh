#!/bin/bash

#1.compare the string
##check if the 1st parameters is robin
if [ $1 = "robin" ]
then
	echo "I am $1"
fi

##always will true
if [ $1="robin" ]
then
	echo "always true"
fi
