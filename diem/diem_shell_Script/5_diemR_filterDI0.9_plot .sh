#### -------------------------------  In bash  -------------------------------------- ####
srun --partition=medium --cpus-per-task=2 --mem=16G --pty bash
# Probably needs 16G MEM; the diem() step was killed with 8G only

cd /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/3_plotPolarized/CHORM01
conda activate R-diem-v1.4

R

#### --------------------------------  In R  ---------------------------------------- ####
### --- Set up wDIR & add libraries
setwd("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/3_plotPolarized/CHORM01")
getwd()

library(zoo)
library(diemr)
library(vcfR)



### --- Read in data & check the wDIR again
load("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v2/CHORM01/diem_CHORM01.RData")

getwd()



### --- Filter sites with the top 20% of the highest diagnostic index
threshold <- quantile(fit_CHORM01$DI$DI, prob = 0.9)

geno <- importPolarized("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem/diem_input/OX326997.1.diem.txt", fit_CHORM01$markerPolarity, samples, ChosenSites = fit_CHORM01$DI$DI > threshold)
# This step takes about 10 min

HI <- apply(geno, 1, function(x) pHetErrOnStateCount(sStateCount(x)))[1, ]


### --- Save R session and quit
save.image(file = "diem_plot_CHORM01_DI0.9.RData")


