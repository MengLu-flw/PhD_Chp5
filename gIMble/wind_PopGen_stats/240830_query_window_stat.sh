srun --partition=short --cpus-per-task=1 --mem=2G --pty bash

wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/Dxy_gimble
cd $wDIR


##-0- Enter the conda env
source activate /mnt/shared/scratch/mlu/apps/conda/envs/gimble_py310

# -------------------------------------------------------------------------------------- #
##-1.1- Get all window summaries
# -------------------------------------------------------------------------------------- #

time gimble query -z /home/mlu/scratch/2_gimble/2024_May/Geum/Geum_Gstore.z -l windows # BY default, it will output to your current directory
#	[+] Writing BED file 'Geum_Gstore.windows.popgen.bed' ...
#	[*] Total runtime was 00h:01m:33.918s
#	real	1m44.944s
#	user	0m2.746s



time gimble query -z /home/mlu/scratch/2_gimble/2024_May/Geum_cf_sym/Geum_cf_Gstore.z -l windows # BY default, it will output to your current directory
#	[+] Writing BED file 'Geum_cf_Gstore.windows.popgen.bed' ...
#	[*] Total runtime was 00h:02m:42.838s
#	real	3m19.922s
#	user	0m2.376s



##-1.2- Extract window position only
time cut -f1-3,9 Geum_Gstore.windows.popgen.bed > Geum_wind_Dxy.txt
time cut -f1-3,9 Geum_cf_Gstore.windows.popgen.bed > Geum_cf_wind_Dxy.txt


##-1.3- Split the information by per chromosome
time awk 'NR==1 {next} {print > $1".txt"}' Geum_cf_wind_Dxy.txt

#	rm '#.txt'
#	mv OX326997.1.txt Geum_cf_OX326997.txt
#	mv OX326998.1.txt Geum_cf_OX326998.txt
#	mv OX326999.1.txt Geum_cf_OX326999.txt
#	mv OX327000.1.txt Geum_cf_OX327000.txt
#	mv OX327001.1.txt Geum_cf_OX327001.txt
#	mv OX327002.1.txt Geum_cf_OX327002.txt
#	mv OX327003.1.txt Geum_cf_OX327003.txt
#	mv OX327004.1.txt Geum_cf_OX327004.txt
#	mv OX327005.1.txt Geum_cf_OX327005.txt
#	mv OX327006.1.txt Geum_cf_OX327006.txt
#	mv OX327007.1.txt Geum_cf_OX327007.txt
#	mv OX327008.1.txt Geum_cf_OX327008.txt
#	mv OX327009.1.txt Geum_cf_OX327009.txt
#	mv OX327010.1.txt Geum_cf_OX327010.txt
#	mv OX327011.1.txt Geum_cf_OX327011.txt
#	mv OX327012.1.txt Geum_cf_OX327012.txt
#	mv OX327013.1.txt Geum_cf_OX327013.txt
#	mv OX327014.1.txt Geum_cf_OX327014.txt
#	mv OX327015.1.txt Geum_cf_OX327015.txt
#	mv OX327016.1.txt Geum_cf_OX327016.txt
#	mv OX327017.1.txt Geum_cf_OX327017.txt


time awk 'NR==1 {next} {print > $1".txt"}' Geum_wind_Dxy.txt

#	rm '#.txt'
#	mv OX326997.1.txt Geum_OX326997.txt
#	mv OX326998.1.txt Geum_OX326998.txt
#	mv OX326999.1.txt Geum_OX326999.txt
#	mv OX327000.1.txt Geum_OX327000.txt
#	mv OX327001.1.txt Geum_OX327001.txt
#	mv OX327002.1.txt Geum_OX327002.txt
#	mv OX327003.1.txt Geum_OX327003.txt
#	mv OX327004.1.txt Geum_OX327004.txt
#	mv OX327005.1.txt Geum_OX327005.txt
#	mv OX327006.1.txt Geum_OX327006.txt
#	mv OX327007.1.txt Geum_OX327007.txt
#	mv OX327008.1.txt Geum_OX327008.txt
#	mv OX327009.1.txt Geum_OX327009.txt
#	mv OX327010.1.txt Geum_OX327010.txt
#	mv OX327011.1.txt Geum_OX327011.txt
#	mv OX327012.1.txt Geum_OX327012.txt
#	mv OX327013.1.txt Geum_OX327013.txt
#	mv OX327014.1.txt Geum_OX327014.txt
#	mv OX327015.1.txt Geum_OX327015.txt
#	mv OX327016.1.txt Geum_OX327016.txt
#	mv OX327017.1.txt Geum_OX327017.txt




# -------------------------------------------------------------------------------------- #
##-2- Get per window parameter estimates
# -------------------------------------------------------------------------------------- #
#		srun --partition=short --cpus-per-task=1 --mem=6G --pty bash
#		
#		wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp4/gIMble
#		cd $wDIR/2_per_wind_parameter
#		source activate /mnt/shared/scratch/mlu/apps/conda/envs/gimble_py310
#		
#		
#		time gimble query -z /home/mlu/scratch/2_gimble/2024_May/Geum/Geum_Gstore.z -l gridsearch/windows_kmax2/IM_BA_grid_240527
#		#	cp /home/mlu/scratch/2_gimble/2024_May/Geum/queryGrid/Geum_Gstore.gridsearch_windows_kmax2_IM_BA_grid_240527_0.best.bed ./
#		
#		
#		
#		##-2.2- Extract parameter variations only
#		cut -f5-9 Geum_Gstore.gridsearch_windows_kmax2_IM_BA_grid_240527_0.best.bed > Geum_local_para.txt
