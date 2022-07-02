#!/bin/bash

#1.compare the number
if [ $1 -eq 10086 ]
then
	echo "I am $1 and equal 10086"
fi

if [ $1 -gt 10086 ]
then
	echo "I am $1 more than 10086"
fi

if [ $1 -lt 10086 ]
then
	echo "I am $1 less then 10086"
fi

##always will true
if [ $1-eq10086 ]
then
	echo "always true"
fi
