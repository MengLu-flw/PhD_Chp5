#!/bin/bash
#SBATCH --job-name="1_vcf2diempy"
#SBATCH --output="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/1_vcf2diempy_%A-%a.out"
#SBATCH --error="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/1_vcf2diempy_%A-%a.err"
#SBATCH --cpus-per-task=8
#SBATCH --mem=10G
#SBATCH --partition=medium
#SBATCH --array=1-21
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=m.lu-17@sms.ed.ac.uk

## -- Define vairables
appDIR=/home/mlu/scratch/apps/diem_py
iDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/0_SEQdata

wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem
cd $wDIR

source activate /mnt/shared/scratch/mlu/apps/conda/envs/python-diem


## -- Run script
echo $SLURM_ARRAY_TASK_ID
#	ls $iDIR/*.vcf.gz > $iDIR/VCFlist.txt
VCF=$(awk -v lineid=$SLURM_ARRAY_TASK_ID 'NR==lineid{print;exit}' $iDIR/VCFlist.txt)

time python $appDIR/vcf2diem.py -v "$VCF" -l

