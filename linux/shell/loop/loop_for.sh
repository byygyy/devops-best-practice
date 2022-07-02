#!/bin/bash

for i in {1..10}
do
   echo $i
done

count=100
for i in `seq $count`
do
   echo "$i, hello world!"
done
