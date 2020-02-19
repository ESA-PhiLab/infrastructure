#!/bin/bash

IFS=$'\n' read -d '' -r -a paths < /home/eouser/data/S1/Sigma0/NSinai_S1_Creodias_paths_201911_12.txt

for i in ${!paths[@]}; do
 echo 'iteration'
 short=`echo ${paths[$i]} | cut -f9 -d'/' | cut -f6 -d'_'`
 out="/home/eouser/data/S1/Sigma0/${short}_CalS0_TC.dim"
 
 ~/snap/bin/gpt /home/eouser/data/S1/Sigma0/CalSigma0_TC.xml -x -Pinput=${paths[$i]} -Ptarget=${out}
 
 echo 'Written: ' $out
done
