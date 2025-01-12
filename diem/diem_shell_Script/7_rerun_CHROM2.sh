#### -------------------------------------------------------------------------------- ####
#### -------------------------------------------------------------------------------- ####
#!/bin/bash
#SBATCH --job-name="4.2_GeumSYM_CHR02_vcf2diempy"
#SBATCH --output="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/4.2_GeumSYM_CHR02_vcf2diempy.out"
#SBATCH --error="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/4.2_GeumSYM_CHR02_vcf2diempy.err"
#SBATCH --cpus-per-task=8
#SBATCH --mem=10G
#SBATCH --partition=medium
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=m.lu-17@sms.ed.ac.uk

## -- Define vairables
appDIR=/home/mlu/scratch/apps/diem_py
iDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/0_SEQdata

wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem_RERUN
cd $wDIR

source activate /mnt/shared/scratch/mlu/apps/conda/envs/python-diem


## -- Run script
VCF1=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/0_SEQdata/GeumSYM_CHR02.vcf.gz
VCF2=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/0_SEQdata/GeumSYM_CHR02_mask.vcf.gz

cd $wDIR/CHR_2
time python $appDIR/vcf2diem.py -v $VCF1 -l

cd $wDIR/CHR_2_mask
time python $appDIR/vcf2diem.py -v $VCF2 -l

#### -------------------------------------------------------------------------------- ####
#### -------------------------------------------------------------------------------- ####
#!/bin/bash
#SBATCH --job-name="4.3_GeumSYM_CHR02_diemR"
#SBATCH --output="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/4.3_GeumSYM_CHR02_diemR_%A-%a.out"
#SBATCH --error="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/4.3_GeumSYM_CHR02_diemR_%A-%a.err"
#SBATCH --cpus-per-task=8
#SBATCH --mem=18G
#SBATCH --partition=long
#SBATCH --array=1-2
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=m.lu-17@sms.ed.ac.uk

#	mkdir /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v3RERUN
#	cd /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v3RERUN
#	mkdir CHORM02
#	mkdir CHORM02_mask
#	mkdir R_scripts


wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v3RERUN
cd $wDIR

source activate /mnt/shared/scratch/mlu/apps/conda/envs/R-diem-v1.4

#	-------------------------------------------------------------------------------- ####
#	setwd("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v3RERUN/CHORM02")
#	getwd()

#	library(zoo)
#	library(diemr)
#	library(vcfR)

#	samples <- 1:45
#	fit_CHORM02 <- diem("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem_RERUN/CHR2.diem.txt", ChosenInds = samples, ploidy = FALSE, maxIterations = 100)
#	
#	save.image(file = "diem_CHORM02.RData")
#	-------------------------------------------------------------------------------- ####
#	setwd("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v3RERUN/CHORM02_mask")
#	getwd()

#	library(zoo)
#	library(diemr)
#	library(vcfR)

#	samples <- 1:45
#	fit_CHORM02 <- diem("/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem_RERUN/CHR2_mask.diem.txt", ChosenInds = samples, ploidy = FALSE)

#	save.image(file = "diem_CHORM02_mask.RData")
#	-------------------------------------------------------------------------------- ####

#	ls $wDIR/R_scripts/*R > joblist.txt


##-1- Set up array job input
echo $SLURM_ARRAY_TASK_ID
JOB=$(awk -v lineid=$SLURM_ARRAY_TASK_ID 'NR==lineid{print;exit}' $wDIR/R_scripts/joblist.txt)


##-2- Run scripts
R

time Rscript "$JOB"
















