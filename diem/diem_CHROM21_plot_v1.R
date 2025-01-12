setwd("/Users/menglu/Downloads")
getwd()

#install.packages("diemr_1.4.tar.gz", repos = NULL, type = "source")

library(diemr)
library(zoo)
library(diemr)
library(vcfR)

### ---- DI 0.9 (keep sites with top 10% highest DI)
load("diem_plot_CHORM21_DI0.9.RData")
getwd()


### --- with sample labels
#	indNames_full <- c ("cf.urb. (ML192)", "cf.urb. (ML193)", "cf.urb. (ML194)", "cf.urb. (ML195)", 
#               "cf.urb. (ML196)", "BC.riv. (ML197)", "cf.riv. (ML198)", "BC.riv. (ML199)", 
#               "cf.riv. (ML201)", "cf.riv. (ML202)", "cf.urb. (ML203)", "cf.urb. (ML204)", 
#               "cf.urb. (ML205)", "cf.urb. (ML206)", "BC.urb. (ML207)", "cf.riv. (ML208)", 
#               "cf.riv. (ML209)", "cf.riv. (ML210)", "cf.riv. (ML211)", "cf.riv. (ML212)", 
#               "cf.urb. (ML213)", "cf.urb. (ML214)", "cf.urb. (ML215)", "cf.urb. (ML216)", 
#               "cf.urb. (ML217)", "F2 (ML245)", "F2 (ML246)", "BC.urb.(ML247)", "F2 (ML248)", 
#               "F2 (ML249)", "BC.riv. (ML250)", "BC.riv. (ML251)", "BC.riv. (ML252)", 
#               "BC.urb. (ML253)", "BC.urb. (ML254)", "BC.urb. (ML255)", "BC.riv. (ML259)", 
#               "BC.urb. (ML261)", "F2 (ML262)", "F2 (ML263)", "cf.riv. (ML294)", 
#               "BC.riv. (ML300)", "BC.riv. (ML301)", "BC.urb. (ML302)", "BC.riv. (ML304)")


#--------------
indNames <- c ("cf.urb.", "cf.urb.", "cf.urb.", "cf.urb.", "cf.urb.", "BC.riv.", "cf.riv.", 
               "BC.riv.", "cf.riv.", "cf.riv.", "cf.urb.", "cf.urb.", "cf.urb.", "cf.urb.", 
               "BC.urb.", "cf.riv.", "cf.riv.", "cf.riv.", "cf.riv.", "cf.riv.", "cf.urb.", 
               "cf.urb.", "cf.urb.", "cf.urb.", "cf.urb.", "F2", "F2", "BC.urb.", "F2", "F2", 
               "BC.riv.", "BC.riv.", "BC.riv.", "BC.urb.", "BC.urb.", "BC.urb.", "BC.riv.", 
               "BC.urb.", "F2", "F2", "cf.riv.", "BC.riv.", "BC.riv.", "BC.urb.", "BC.riv.")


plotPolarized(geno, HI, labels = indNames, xlab = "", ylab = "")

plotMarkerAxis("OX327017.1-includedSites.txt", ChosenSites = fit_CHORM21$DI$DI > threshold)











