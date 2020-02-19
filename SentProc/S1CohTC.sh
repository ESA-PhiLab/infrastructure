#!/bin/bash

#paths=`cat $1`

IFS=$'\n' read -d '' -r -a paths < /home/eouser/data/S1/Coh/NSinai_S1_SLC_Creodias_paths_201911_201912.txt

elements=$(( ${#paths[@]} - 1 ))

first=(${paths[@]:0:$elements})
last=(${paths[@]:1:$elements})

for i in ${!first[@]}; do
 echo 'iteration'
 shortfirst=`echo ${first[$i]} | cut -f9 -d'/' | cut -f6 -d'_'`
 shortlast=`echo ${last[$i]} | cut -f9 -d'/' | cut -f6 -d'_'` 
 out="/home/eouser/data/S1/Coh/${shortfirst}_${shortlast}_coh_ML_TC.dim"
 
 ~/snap/bin/gpt /home/eouser/data/S1/Coh/TOPSAR_Coreg_Coh_ML_TC_IW_All_Swaths.xml -x -Pinputf=${first[$i]} -Pinputl=${last[$i]} -Ptarget=${out}
 
 echo 'Written: ' $out
done
