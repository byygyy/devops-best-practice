#!/bin/bash

#if the command execute successful, it will true; if the command execute failed, it will false
#if the return code is 0, it will true; if the return code is not 0, it will false

#1.command execute success,return code is 0
if whoami
then
	echo "return $?"
	echo "I am `whoami`"
fi

#2.command execute failed,return code is not 0
if whoamilove
then
	echo "return $?"
else
	echo "return $?"
fi

#3.command execute success, but can't grep anything, return code is 1
if cat /etc/passwd|grep hello
then
	echo "return $?"
	echo "hello can found"
else
	echo "return $?"
	echo "heollo can't found"
	
fi
