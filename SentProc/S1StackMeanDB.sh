#!/bin/bash
# Sentinel-1 processing
# C. Stewart 6/12/2019

paths=`ls -m /home/eouser/data/S1/Sigma0/*TC.dim | tr -d '[:space:]'`

fileout='/home/eouser/data/S1/Sigma0/S1_S0_TC_stack_mean_dB.dim'

echo $paths

~/snap/bin/gpt /home/eouser/data/S1/Sigma0/stack_mean_dB.xml -x -Pinput=${paths} -Ptarget=${fileout}

