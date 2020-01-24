#!/bin/bash
# Sentinel-1 processing
# C. Stewart 6/12/2019

paths=`cat $1`

for path in $paths
do

fileshort=`echo $path | cut -f9 -d'/' | cut -f1 -d'.'`
fileout="/home/eouser/data/S1/CalS0/${fileshort}_cal.dim"

echo ${path}
echo ${fileout}

~/snap/bin/gpt /home/eouser/data/S1/CalS0.xml -x -Pinput=${path} -Ptarget=${fileout}

done

