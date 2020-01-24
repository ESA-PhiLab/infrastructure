# Infrastructure Mapping and Monitoring in Deserts with Sentinel-1
This project implements a methodology for infrastructure mapping and monitoring in desert regions using Sentinel-1 SAR data. The methodology consists of the following steps:

1) Extract a time series of 5 consecutively acquired Sentinel-1 GRD images over an area of interest. Here the data is obtained through Creodias, and the area of interest is the North Sinai Desert 

(see AOI folder)

2) Apply the following preprocessing steps automatically through shell scripts and GPT (command line version of SNAP software):
   1) Calibration to Sigma0
   2) Stacking and multitemporal speckle filtering
   3) Terrain Correction (using SRTM DEM) and conversion to decibel

(see SentProc folder)
   
3) Apply the following Deep Learning workflow:
   1) Create mask of known infrastructure from Open Street Map (rasterise OSM vectors)
   2) Extract patches from areas of Sentinel-1 data covered by mask
   3) Divide patches between train, validation and test data
   3) Augment training data
   4) Train U-Net model for image segmentation
   5) Extract patches over entire Sentinel-1 data, apply the model to these patches
   6) Reconstruct image from model output, and convert raster to vector

(see DeepLearning folder)
