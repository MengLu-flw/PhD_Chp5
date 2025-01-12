
cd /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4

srun --partition=short --cpus-per-task=1 --mem=12G --pty bash
srun --partition=short --cpus-per-task=2 --mem=1G --pty bash


### ---------------------------------------------------------------------------------- ###
### ------------------------ Create a new R env -------------------------------------- ###
### ---------------------------------------------------------------------------------- ###
time conda create --name R-diem-v1.4 --channel conda-forge --channel bioconda r-base r-dplyr r-vcfR r-RColorBrewer r-ggplot2

conda activate R-diem-v1.4
R

### ---------------------------------------------------------------------------------- ###
### ------------------------ Install diem package ------------------------------------ ###
### ---------------------------------------------------------------------------------- ###

setwd("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4")
getwd()

## - Try install from the source: download the package tarball, and upload the .tar.gz
## - to Crop Diversity; same working directory
install.packages('zoo')
library(zoo)

install.packages("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/diemr_1.4.tar.gz", repos = NULL, type = "source")
library(diemr)



