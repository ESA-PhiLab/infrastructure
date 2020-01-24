#!/bin/bash
# Sentinel-1 processing
# C. Stewart 6/12/2019

paths=`ls -m /home/eouser/data/S1/TC/*TC.dim | tr -d '[:space:]'`

fileout='/home/eouser/data/S1/Stack/S1_TC_stack_mean_dB.dim'

echo $paths

~/snap/bin/gpt /home/eouser/data/S1/stack_mean.xml -x -Pinput=${paths} -Ptarget=${fileout}

