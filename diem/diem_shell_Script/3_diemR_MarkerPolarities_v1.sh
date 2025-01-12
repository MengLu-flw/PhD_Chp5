#### -------------------------------  In bash  -------------------------------------- ####
srun --partition=medium --cpus-per-task=2 --mem=16G --pty bash
# Probably needs 16G MEM; the diem() step was killed with 8G only

cd /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar
conda activate R-diem-v1.4

R

#### --------------------------------  In R  ---------------------------------------- ####
### --- Set up wDIR & add libraries
setwd("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar")
getwd()

library(zoo)
library(diemr)
library(vcfR)


### --- Prepare diem format files

### Specify the path for genotype matrix files -  paralelisation
subory <- dir("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem/diem_input", full.names = TRUE)
### Analysing all individuals
samples <- 1:45
### Add ploidy level to all samples
ploidies <- rep(list(rep(2, length(samples))), length(subory)) 


### Check input formats are correct before polarising
CheckDiemFormat(files = subory, ChosenInds = samples, ploidy = ploidies) # Take about 3 mins


### Use diem
#	res <- diem(files = subory, ChosenInds = samples, ploidy = ploidies,
#	            markerPolarity = FALSE, verbose = TRUE)
#	In addition: Warning message:
#	In parallel::mclapply(X = as.character(1:length(files)), mc.cores = nCores,  :
#	  scheduled cores 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 did not deliver results, all values of the jobs will be affected



fit_CHORM01 <- diem("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem/diem_input/OX326997.1.diem.txt", ChosenInds = samples, ploidy = FALSE)










