The .xml files are the processing graph files. They are used by SNAP GPT to process the Sentinel-1 data:

TOPSAR_Coreg_Coh_ML_TC_IW_All_Swaths.xml: Coherence processing chain

CalSigma0_TC.xml: Intensity processing chain

stack_mean_dB.xml: Processing chain to stack (coregister) time series, and convert final product to decibel (non-linear scale, for better visualisation)

The .sh are shell files, to automate processing of time series:

S1CohTC.sh: Coherence time series

S1Sigma0TC.sh: Intensity time series

S1StackMeanDB.sh: Coregistration of time series, averaging and conversion to decibel
