#!/bin/bash
filename=temp.txt
echo Adding www. subdomain to domains...
while read line; do
echo $line >> blocklist.txt
echo www.$line >> blocklistwithsubdomain.txt
done < $filename
echo Done...
rm $filename
echo Removing $filename...
touch $filename
echo Generating blank $filename
