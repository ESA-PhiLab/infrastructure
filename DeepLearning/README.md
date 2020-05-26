This page contains the Jupyter Notebook of the Deep Learning workflow, and the trained U-Net segmentation models.

* roadsPolCoh.ipynb: Jupyter Notebook with the U-Net segmentation workflow. It takes VV and VH Sigma0 and coherence as input

roads.ipynb: Jupyter Notebook with the U-Net segmentation workflow. It takes VV Sigma0 as input

roadModelDataAugPolCoh.h5: U-Net segmentation model trained on Sentinel-1 VV and VH Sigma0 (average of 6) and coherence (average consecutive coherence from 6 SLC).

roadModelDataAugV1Val.h5: U-Net segmentation model trained on Sentinel-1 VV Sigma0 (average of 5).
