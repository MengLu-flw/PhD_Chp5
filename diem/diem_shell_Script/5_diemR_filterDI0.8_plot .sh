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
threshold <- quantile(fit_CHORM01$DI$DI, prob = 0.8)

geno <- importPolarized("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem/diem_input/OX326997.1.diem.txt", fit_CHORM01$markerPolarity, samples, ChosenSites = fit_CHORM01$DI$DI > threshold)
# This step takes about 10 min

HI <- apply(geno, 1, function(x) pHetErrOnStateCount(sStateCount(x)))[1, ]


### --- Save R session and quit
save.image(file = "diem_plot_CHORM01_DI0.8.RData")


### --- Plot hybrid index (HI) --- ON YOUR LOCAL MACHINE
#	indNames <-  paste0(sample(LETTERS, 6,T), sample(10:99,6,T))
#	plotPolarized(dat, h, labels = indNames)

#	cd /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem/snp_pos
#	awk '{print "OX326997.1\t" $0}' OX326997.1.snp_pos.diem.txt > OX326997.1-includedSites.txt



# Download site postion files from:
# /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem/snp_pos/

plotPolarized(geno, HI, xlab = "")
plotMarkerAxis("OX326997.1-includedSites.txt", ChosenSites = fit_CHORM01$DI$DI > threshold)







