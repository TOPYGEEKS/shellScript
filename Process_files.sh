#!/bin/bash
# Start Script!
path="$PWD"
#find file type
if [ ! -z "$1" ];
then
mkdir $1

  find "$path" -maxdepth 1 -type f -name "*.$1" -exec mv "{}" "$path/$1" \;



fi

if [ ! -z "$2" ];
then
mkdir $2

  find "$path" -maxdepth 1 -type f -name "*.$2" -exec mv "{}" "$path/$2" \ ;


fi

if [ ! -z "$3" ];
then
mkdir $3

  find "$path" -maxdepth 1 -type f -name "*.$3" -exec mv "{}" "$path/$3" \;



fi

mkdir 'not'
find "$path" -maxdepth 1 -type f  -exec mv "{}" "$path/not" \;

ls "$path/$1" -l -S
echo "################################################################"
ls "$path/$2" -l -S
echo "################################################################"
ls "$path/$3" -l -S
echo "################################################################"

# End Script!
