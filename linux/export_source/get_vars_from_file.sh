#!/bin/sh

# got vars define from external file
source  ./define_vars
echo $name

#if you want to overwrite it
export name='jasonli'
echo $name

# if you want to got var from user input
par=$* 
echo $par
count=1
for i in "$@"
do
    echo $count: $i
    count=$[ $count + 1 ]
done
