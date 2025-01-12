srun --partition=medium --cpus-per-task=1 --mem=8G --pty bash

wDIR=/mnt/destiny/sandbox/rbge_mlu/Chp5/deltaB_gimble
cd $wDIR

source activate /mnt/shared/scratch/mlu/apps/conda/envs/gimble_py310


#	time gimble query -z /home/mlu/scratch/2_gimble/2024_May/Geum/Geum_Gstore.z -l gridsearch/windows_kmax2/IM_BA_grid_240527 --sliced me
#	This "slice" output the marginal lnCL for all gridded me
#	This is where you can find the lnCL for mi = 0 in each window

#	When you acquire the me=0 column of the lnCL, it forms the first part of the delta_B equation



time gimble query -z /home/mlu/scratch/2_gimble/2024_May/Geum/Geum_Gstore.z -l gridsearch/windows_kmax2/IM_BA_deltaB_240528
#	"gridsearch/windows_kmax2/IM_BA_deltaB_240528" this run was done by re-making the girds
#	Differing from the first time, this time, both T and me were fixed as the best global estimates, only N varies in each local window

#	This forms the second part of the delta_B equation


####-------------------------------------------------------------------------------------#
####---------------------------- Edit bed output --------------------------------------#
####-------------------------------------------------------------------------------------#
cut -f1-5 Geum_Gstore.gridsearch_windows_kmax2_IM_BA_grid_240527_0.sliced_param.me.bed > Geum_grid_me0.txt
# the first part of the delta_B equation
cut -f10 Geum_Gstore.gridsearch_windows_kmax2_IM_BA_deltaB_240528_0.best.bed > Geum_grid_meFIX.txt
# the second part of the delta_B equation



paste Geum_grid_me0.txt Geum_grid_meFIX.txt > Geum_grid_deltaB.txt # This output contains the information for R plotting

##--- Split into per CHROM
time awk 'NR==1 {next} {print > $1".txt"}' Geum_grid_deltaB.txt # Split the information by per chromosome
##--- Rename files
mv OX326997.1.txt CHROM01_deltaB.txt
mv OX326998.1.txt CHROM02_deltaB.txt
mv OX326999.1.txt CHROM03_deltaB.txt
mv OX327000.1.txt CHROM04_deltaB.txt
mv OX327001.1.txt CHROM05_deltaB.txt
mv OX327002.1.txt CHROM06_deltaB.txt
mv OX327003.1.txt CHROM07_deltaB.txt
mv OX327004.1.txt CHROM08_deltaB.txt
mv OX327005.1.txt CHROM09_deltaB.txt
mv OX327006.1.txt CHROM10_deltaB.txt
mv OX327007.1.txt CHROM11_deltaB.txt
mv OX327008.1.txt CHROM12_deltaB.txt
mv OX327009.1.txt CHROM13_deltaB.txt
mv OX327010.1.txt CHROM14_deltaB.txt
mv OX327011.1.txt CHROM15_deltaB.txt
mv OX327012.1.txt CHROM16_deltaB.txt
mv OX327013.1.txt CHROM17_deltaB.txt
mv OX327014.1.txt CHROM18_deltaB.txt
mv OX327015.1.txt CHROM19_deltaB.txt
mv OX327016.1.txt CHROM20_deltaB.txt
mv OX327017.1.txt CHROM21_deltaB.txt

##--- Add header
for file in CHROM*_deltaB.txt; do
    echo -e "sequence\tstart\tend\twindow_idx\tme=0.0\tlnCl" | cat - "$file" > temp && mv temp "$file"
done




