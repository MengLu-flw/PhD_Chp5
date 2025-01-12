#!/bin/bash
#SBATCH --job-name="2_diemR_240901"
#SBATCH --output="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/2_diemR_240901_%A-%a.out"
#SBATCH --error="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/2_diemR_240901_%A-%a.err"
#SBATCH --cpus-per-task=2
#SBATCH --mem=22G
#SBATCH --partition=medium
#SBATCH --array=1-21
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=m.lu-17@sms.ed.ac.uk


##-0- Define variables
wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v2
cd $wDIR

source activate /mnt/shared/scratch/mlu/apps/conda/envs/R-diem-v1.4

##-1- Set up array job input
echo $SLURM_ARRAY_TASK_ID
JOB=$(awk -v lineid=$SLURM_ARRAY_TASK_ID 'NR==lineid{print;exit}' $wDIR/R_scripts/joblist.txt)


##-2- Run scripts
R

time Rscript "$JOB"



#### -------------------------------------------------------------------------------- ####
#### ------------------------------ Rerun due to TIMEOUT ---------------------------- ####
#### -------------------------------------------------------------------------------- ####
#!/bin/bash
#SBATCH --job-name="2_diemR_240902"
#SBATCH --output="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/2_diemR_240902_%A-%a.out"
#SBATCH --error="/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/Slurm/2_diemR_240902_%A-%a.err"
#SBATCH --cpus-per-task=2
#SBATCH --mem=18G
#SBATCH --partition=long
#SBATCH --array=1-6
#SBATCH --mail-type=FAIL,END
#SBATCH --mail-user=m.lu-17@sms.ed.ac.uk

#	mkdir /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v2RERUN
#	cd /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v2RERUN
#	mkdir CHORM02
#	mkdir CHORM04
#	mkdir CHORM05
#	mkdir CHORM08
#	mkdir CHORM15
#	mkdir CHORM18


wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v2RERUN
cd $wDIR

source activate /mnt/shared/scratch/mlu/apps/conda/envs/R-diem-v1.4

#	mDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4
#	cp $mDIR/2_diemPolar_v2/R_scripts/CHORM02.R $mDIR/2_diemPolar_v2RERUN/R_scripts/
#	cp $mDIR/2_diemPolar_v2/R_scripts/CHORM04.R $mDIR/2_diemPolar_v2RERUN/R_scripts/
#	cp $mDIR/2_diemPolar_v2/R_scripts/CHORM05.R $mDIR/2_diemPolar_v2RERUN/R_scripts/
#	cp $mDIR/2_diemPolar_v2/R_scripts/CHORM08.R $mDIR/2_diemPolar_v2RERUN/R_scripts/
#	cp $mDIR/2_diemPolar_v2/R_scripts/CHORM15.R $mDIR/2_diemPolar_v2RERUN/R_scripts/
#	cp $mDIR/2_diemPolar_v2/R_scripts/CHORM18.R $mDIR/2_diemPolar_v2RERUN/R_scripts/
#	ls /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/2_diemPolar_v2RERUN/R_scripts/*R > joblist.txt


##-1- Set up array job input
echo $SLURM_ARRAY_TASK_ID
JOB=$(awk -v lineid=$SLURM_ARRAY_TASK_ID 'NR==lineid{print;exit}' $wDIR/R_scripts/joblist.txt)


##-2- Run scripts
R

time Rscript "$JOB"



