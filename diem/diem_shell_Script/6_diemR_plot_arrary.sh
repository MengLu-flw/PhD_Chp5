#!/bin/bash
#SBATCH --job-name="3_diemR_plot_240909"
#SBATCH --output="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/3_diemR_plot_240909_%A-%a.out"
#SBATCH --error="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/3_diemR_plot_240909_%A-%a.err"
#SBATCH --cpus-per-task=2
#SBATCH --mem=22G
#SBATCH --partition=short
#SBATCH --array=1-5
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=m.lu-17@sms.ed.ac.uk


##-0- Define variables
wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/3_plotPolarized
cd $wDIR

source activate /mnt/shared/scratch/mlu/apps/conda/envs/R-diem-v1.4

##-1- Set up array job input
echo $SLURM_ARRAY_TASK_ID
JOB=$(awk -v lineid=$SLURM_ARRAY_TASK_ID 'NR==lineid{print;exit}' $wDIR/R_scripts/joblist.txt)


##-2- Run scripts
R

time Rscript "$JOB"



