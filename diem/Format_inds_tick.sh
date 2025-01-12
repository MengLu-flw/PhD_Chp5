srun --partition=short --cpus-per-task=2 --mem=500M --pty bash

cd /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem/snp_pos


## -- Need to reformat the VCF2diem.py output to the R plotting format
## -- The acceptable R format is: tab-delimited, two column, column names
## -- CHROM	POS


## -- For this round, you need Chromosome 1, 4, 5, 9, 12, 14, which are:
## -- OX326997.1.snp_pos.diem.txt
## -- OX327000.1.snp_pos.diem.txt
## -- OX327001.1.snp_pos.diem.txt
## -- OX327005.1.snp_pos.diem.txt
## -- OX327008.1.snp_pos.diem.txt
## -- OX327010.1.snp_pos.diem.txt


# Add a new column of the CHROM & add headers "CHROM\tPOS"

time (echo -e "CHROM\tPOS"; awk '{print "OX326997.1\t" $0}' OX326997.1.snp_pos.diem.txt) > OX326997.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327000.1\t" $0}' OX327000.1.snp_pos.diem.txt) > OX327000.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327001.1\t" $0}' OX327001.1.snp_pos.diem.txt) > OX327001.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327005.1\t" $0}' OX327005.1.snp_pos.diem.txt) > OX327005.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327008.1\t" $0}' OX327008.1.snp_pos.diem.txt) > OX327008.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327010.1\t" $0}' OX327010.1.snp_pos.diem.txt) > OX327010.1-includedSites.txt


time (echo -e "CHROM\tPOS"; awk '{print "OX326999.1\t" $0}' OX326999.1.snp_pos.diem.txt) > OX326999.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327002.1\t" $0}' OX327002.1.snp_pos.diem.txt) > OX327002.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327003.1\t" $0}' OX327003.1.snp_pos.diem.txt) > OX327003.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327004.1\t" $0}' OX327004.1.snp_pos.diem.txt) > OX327004.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327006.1\t" $0}' OX327006.1.snp_pos.diem.txt) > OX327006.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327007.1\t" $0}' OX327007.1.snp_pos.diem.txt) > OX327007.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327009.1\t" $0}' OX327009.1.snp_pos.diem.txt) > OX327009.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327011.1\t" $0}' OX327011.1.snp_pos.diem.txt) > OX327011.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327012.1\t" $0}' OX327012.1.snp_pos.diem.txt) > OX327012.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327013.1\t" $0}' OX327013.1.snp_pos.diem.txt) > OX327013.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327014.1\t" $0}' OX327014.1.snp_pos.diem.txt) > OX327014.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327015.1\t" $0}' OX327015.1.snp_pos.diem.txt) > OX327015.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327016.1\t" $0}' OX327016.1.snp_pos.diem.txt) > OX327016.1-includedSites.txt
time (echo -e "CHROM\tPOS"; awk '{print "OX327017.1\t" $0}' OX327017.1.snp_pos.diem.txt) > OX327017.1-includedSites.txt




cd /mnt/destiny/sandbox/rbge_mlu/Chp5/diem_v1.4/1_VCF2diem_RERUN

time (echo -e "CHROM\tPOS"; awk '{print "OX326998.1\t" $0}' CHR2_mask.snp_pos.diem.txt) > CHR2_mask-includedSites.txt
