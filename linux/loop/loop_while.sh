#!/bin/bash
i=10
while [ $i -ge 1 ] #when i greater or equal
do
	echo $i
	let i--
done

while true
do
  read -p "please give me a number:" input1
  if [ $input1 -ne 88 ]
  then
	  echo "you are incorrect!"
  else
	  echo "you are correct!"
	  break
  fi
done
