srun --partition=medium --cpus-per-task=1 --mem=500M --pty bash
#### -------------------------------------------------------------------------------- ####


##-- Define variables
pDIR=/mnt/shared/scratch/mlu/5_diem/0_inputVCF

wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/0_SEQdata
cd $wDIR

ls -lh $pDIR

cp $pDIR/GeumSYM_CHR*.vcf.gz $wDIR/



#### -------------------------------------------------------------------------------- ####
#### -------------------------------------------------------------------------------- ####
#!/bin/bash
#SBATCH --job-name="4.1_GeumSYM_CHR02_mask"
#SBATCH --output="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/4.1_GeumSYM_CHR02_mask.out"
#SBATCH --error="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/4.1_GeumSYM_CHR02_mask.err"
#SBATCH --cpus-per-task=1
#SBATCH --partition=short
#SBATCH --mem=800M
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=m.lu-17@sms.ed.ac.uk


##-0- Define variables and working dir
wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/0_SEQdata
cd $wDIR

bedtools=/mnt/shared/scratch/mlu/apps/bedtools2/bin/bedtools # locate the app

oREF=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/0_SEQdata/GeumSYM_CHR02.vcf.gz
REPEAT=/home/mlu/scratch/0_ref_Geno/0_Masked/GeuUrba_masked.repeats.bed



## Mask repeats by intersecting VCF with bed, keep VCF format
time $bedtools intersect -v -a $oREF -b $REPEAT -header > GeumSYM_CHR02_mask.vcf

time bgzip GeumSYM_CHR02_mask.vcf



