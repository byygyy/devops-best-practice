#!/bin/bash

if [ $1 -eq 10086 ]
then
        echo "I am $1 and equal 10086"
elif [ $1 -le 10086 ]
then
	echo "I am $1 and less than 10086"
elif [ $1 -gt 10086 ]
then
	echo "I am $1 and more than 10086"
else
	echo "haha"
fi

