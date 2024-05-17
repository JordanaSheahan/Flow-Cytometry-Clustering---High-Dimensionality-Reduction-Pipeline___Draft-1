Flow-Cytometry Clustering & High Dimensionality Reduction Pipeline

Developed by Jordana Sheahan for Immunology Group at Telethon Kids Institute by application of packages from Spectre, Cytofkit2 and CytoNorm 
V1 Published on GitHub 17/05/2024
These packages originate from following:
Spectre: https://wiki.centenary.org.au/display/SPECTRE/Discovery+workflow+with+batch+alignment+using+CytoNorm
Cytofkit2: https://github.com/JinmiaoChenLab/cytofkit2
CytoNorm: https://github.com/saeyslab/CytoNorm

This pipeline is designed to process flow cytometry data from raw fcs file format to visualisation and analysis steps by combining the best parts of the above packages.
Broadly, the steps this pipeline takes is as follows:
1. Pre-processing by fcs file re-labelling for easy R manipulation downstream and configuring as csv files with metadata setup
2. Directory setup for ease of organisation
3. Data import and file merge
4. Logicle data transformation
5. Batch alignment using CytoNorm - this step requires the addition of separate text source files as provided in repository.

The pipeline then branches into two options for dimensionality reduction and clustering based on preferences/data type
Branch 1: applied Spectre and FlowSOM for clustering, dimensionality reduction, UMAP visualisation and some summary statistics 
Branch 2: applied Cytofkit2 and Phenograph for clustering, dimensionality reduction, UMAP visualisation and mean expression data export

Finally, the data can be re-written as fcs files for further investigation of clusters if desired.

This pipeline is designed for use by the Telethon Kids Institute and credits go to the Immunology Group and Vaccine Trials Group.
