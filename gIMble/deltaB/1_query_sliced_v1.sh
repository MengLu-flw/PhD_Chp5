srun --partition=medium --cpus-per-task=1 --mem=8G --pty bash

wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/deltaB_gimble
cd $wDIR

source activate /mnt/shared/scratch/mlu/apps/conda/envs/gimble_py310


time gimble query -z /home/mlu/scratch/2_gimble/2024_May/Geum/Geum_Gstore.z -l gridsearch/windows_kmax2/IM_BA_grid_240527 --sliced me


time gimble query -z /home/mlu/scratch/2_gimble/2024_May/Geum_cf_sym/Geum_cf_Gstore.z -l gridsearch/windows_kmax2/IM_BA_grid_240610 --sliced me
#	[+] Wrote 'Geum_cf_Gstore.gridsearch_windows_kmax2_IM_BA_grid_240610_0.sliced_param.me.bed'
#	[+] Wrote 'Geum_cf_Gstore.gridsearch_windows_kmax2_IM_BA_grid_240610_0.best.bed'
#	[*] Total runtime was 00h:01m:34.900s