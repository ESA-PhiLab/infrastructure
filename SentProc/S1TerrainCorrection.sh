#!/bin/bash
# Sentinel-1 processing
# C. Stewart 13/12/2019

paths=`ls /home/eouser/data/S1/CalS0/*.dim`

for path in $paths
do

fileshort=`echo $path | cut -f7 -d'/' | cut -f1 -d'.'`
fileout="/home/eouser/data/S1/TC/${fileshort}_TC.dim"

echo ${path}
echo ${fileout}

~/snap/bin/gpt /home/eouser/data/S1/TC.xml -x -Pinput=${path} -Ptarget=${fileout}

done

