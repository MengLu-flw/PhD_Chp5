#check the directory
setwd("/Users/menglu/Library/CloudStorage/OneDrive-UniversityofEdinburgh/Edinburgh/2_Project/0_Thesis_writing/Chp5/Fig_Table/tmp/gIMble_local_Dxy")
getwd()


# setting up
library(tidyverse)
library(dplyr)
library(scales)
library(ggplot2)
library(ggrepel)
library(ggpubr)

## Read in data
#### Read in allopatric data ####
geum_Chr1 <- read.delim("Geum_OX326997.txt")
geum_Chr2 <- read.delim("Geum_OX326998.txt")
geum_Chr3 <- read.delim("Geum_OX326999.txt")
geum_Chr4 <- read.delim("Geum_OX327000.txt")
geum_Chr5 <- read.delim("Geum_OX327001.txt")
geum_Chr6 <- read.delim("Geum_OX327002.txt")
geum_Chr7 <- read.delim("Geum_OX327003.txt")
geum_Chr8 <- read.delim("Geum_OX327004.txt")
geum_Chr9 <- read.delim("Geum_OX327005.txt")
geum_Chr10 <- read.delim("Geum_OX327006.txt")
geum_Chr11 <- read.delim("Geum_OX327007.txt")
geum_Chr12 <- read.delim("Geum_OX327008.txt")
geum_Chr13 <- read.delim("Geum_OX327009.txt")
geum_Chr14 <- read.delim("Geum_OX327010.txt")
geum_Chr15 <- read.delim("Geum_OX327011.txt")
geum_Chr16 <- read.delim("Geum_OX327012.txt")
geum_Chr17 <- read.delim("Geum_OX327013.txt")
geum_Chr18 <- read.delim("Geum_OX327014.txt")
geum_Chr19 <- read.delim("Geum_OX327015.txt")
geum_Chr20 <- read.delim("Geum_OX327016.txt")
geum_Chr21 <- read.delim("Geum_OX327017.txt")


geum_Chr1$window_midpoint <- (geum_Chr1$start + geum_Chr1$end)/2
geum_Chr2$window_midpoint <- (geum_Chr2$start + geum_Chr2$end)/2
geum_Chr3$window_midpoint <- (geum_Chr3$start + geum_Chr3$end)/2
geum_Chr4$window_midpoint <- (geum_Chr4$start + geum_Chr4$end)/2
geum_Chr5$window_midpoint <- (geum_Chr5$start + geum_Chr5$end)/2
geum_Chr5$window_midpoint <- (geum_Chr5$start + geum_Chr5$end)/2
geum_Chr6$window_midpoint <- (geum_Chr6$start + geum_Chr6$end)/2
geum_Chr7$window_midpoint <- (geum_Chr7$start + geum_Chr7$end)/2
geum_Chr8$window_midpoint <- (geum_Chr8$start + geum_Chr8$end)/2
geum_Chr9$window_midpoint <- (geum_Chr9$start + geum_Chr9$end)/2
geum_Chr10$window_midpoint <- (geum_Chr10$start + geum_Chr10$end)/2
geum_Chr11$window_midpoint <- (geum_Chr11$start + geum_Chr11$end)/2
geum_Chr12$window_midpoint <- (geum_Chr12$start + geum_Chr12$end)/2
geum_Chr13$window_midpoint <- (geum_Chr13$start + geum_Chr13$end)/2
geum_Chr14$window_midpoint <- (geum_Chr14$start + geum_Chr14$end)/2
geum_Chr15$window_midpoint <- (geum_Chr15$start + geum_Chr15$end)/2
geum_Chr16$window_midpoint <- (geum_Chr16$start + geum_Chr16$end)/2
geum_Chr17$window_midpoint <- (geum_Chr17$start + geum_Chr17$end)/2
geum_Chr18$window_midpoint <- (geum_Chr18$start + geum_Chr18$end)/2
geum_Chr19$window_midpoint <- (geum_Chr19$start + geum_Chr19$end)/2
geum_Chr20$window_midpoint <- (geum_Chr20$start + geum_Chr20$end)/2
geum_Chr21$window_midpoint <- (geum_Chr21$start + geum_Chr21$end)/2

#####

#### Read in sympatric data ####
geumSYM_Chr1 <- read.delim("Geum_cf_OX326997.txt")
geumSYM_Chr2 <- read.delim("Geum_cf_OX326998.txt")
geumSYM_Chr3 <- read.delim("Geum_cf_OX326999.txt")
geumSYM_Chr4 <- read.delim("Geum_cf_OX327000.txt")
geumSYM_Chr5 <- read.delim("Geum_cf_OX327001.txt")
geumSYM_Chr6 <- read.delim("Geum_cf_OX327002.txt")
geumSYM_Chr7 <- read.delim("Geum_cf_OX327003.txt")
geumSYM_Chr8 <- read.delim("Geum_cf_OX327004.txt")
geumSYM_Chr9 <- read.delim("Geum_cf_OX327005.txt")
geumSYM_Chr10 <- read.delim("Geum_cf_OX327006.txt")
geumSYM_Chr11 <- read.delim("Geum_cf_OX327007.txt")
geumSYM_Chr12 <- read.delim("Geum_cf_OX327008.txt")
geumSYM_Chr13 <- read.delim("Geum_cf_OX327009.txt")
geumSYM_Chr14 <- read.delim("Geum_cf_OX327010.txt")
geumSYM_Chr15 <- read.delim("Geum_cf_OX327011.txt")
geumSYM_Chr16 <- read.delim("Geum_cf_OX327012.txt")
geumSYM_Chr17 <- read.delim("Geum_cf_OX327013.txt")
geumSYM_Chr18 <- read.delim("Geum_cf_OX327014.txt")
geumSYM_Chr19 <- read.delim("Geum_cf_OX327015.txt")
geumSYM_Chr20 <- read.delim("Geum_cf_OX327016.txt")
geumSYM_Chr21 <- read.delim("Geum_cf_OX327017.txt")


geumSYM_Chr1$window_midpoint <- (geumSYM_Chr1$start + geumSYM_Chr1$end)/2
geumSYM_Chr2$window_midpoint <- (geumSYM_Chr2$start + geumSYM_Chr2$end)/2
geumSYM_Chr3$window_midpoint <- (geumSYM_Chr3$start + geumSYM_Chr3$end)/2
geumSYM_Chr4$window_midpoint <- (geumSYM_Chr4$start + geumSYM_Chr4$end)/2
geumSYM_Chr5$window_midpoint <- (geumSYM_Chr5$start + geumSYM_Chr5$end)/2
geumSYM_Chr5$window_midpoint <- (geumSYM_Chr5$start + geumSYM_Chr5$end)/2
geumSYM_Chr6$window_midpoint <- (geumSYM_Chr6$start + geumSYM_Chr6$end)/2
geumSYM_Chr7$window_midpoint <- (geumSYM_Chr7$start + geumSYM_Chr7$end)/2
geumSYM_Chr8$window_midpoint <- (geumSYM_Chr8$start + geumSYM_Chr8$end)/2
geumSYM_Chr9$window_midpoint <- (geumSYM_Chr9$start + geumSYM_Chr9$end)/2
geumSYM_Chr10$window_midpoint <- (geumSYM_Chr10$start + geumSYM_Chr10$end)/2
geumSYM_Chr11$window_midpoint <- (geumSYM_Chr11$start + geumSYM_Chr11$end)/2
geumSYM_Chr12$window_midpoint <- (geumSYM_Chr12$start + geumSYM_Chr12$end)/2
geumSYM_Chr13$window_midpoint <- (geumSYM_Chr13$start + geumSYM_Chr13$end)/2
geumSYM_Chr14$window_midpoint <- (geumSYM_Chr14$start + geumSYM_Chr14$end)/2
geumSYM_Chr15$window_midpoint <- (geumSYM_Chr15$start + geumSYM_Chr15$end)/2
geumSYM_Chr16$window_midpoint <- (geumSYM_Chr16$start + geumSYM_Chr16$end)/2
geumSYM_Chr17$window_midpoint <- (geumSYM_Chr17$start + geumSYM_Chr17$end)/2
geumSYM_Chr18$window_midpoint <- (geumSYM_Chr18$start + geumSYM_Chr18$end)/2
geumSYM_Chr19$window_midpoint <- (geumSYM_Chr19$start + geumSYM_Chr19$end)/2
geumSYM_Chr20$window_midpoint <- (geumSYM_Chr20$start + geumSYM_Chr20$end)/2
geumSYM_Chr21$window_midpoint <- (geumSYM_Chr21$start + geumSYM_Chr21$end)/2

#####

# Basic line plot with points
geumCOMP_c1 <- ggplot() +
  geom_line(data=geumSYM_Chr1, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr1, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 1 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
#  ggtitle(bquote(~ italic("Geum") ~"sympatric samples in solid red line;"
#                 ~ italic("Geum") ~"allopatric samples in dashed blue line")) +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")



geumCOMP_c2 <- ggplot() +
  geom_line(data=geumSYM_Chr2, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr2, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 2 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")

  

geumCOMP_c3 <- ggplot() +
  geom_line(data=geumSYM_Chr3, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr3, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 3 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")
  

geumCOMP_c4 <- ggplot() +
  geom_line(data=geumSYM_Chr4, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr4, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 4 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy")  +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c5 <- ggplot() +
  geom_line(data=geumSYM_Chr5, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr5, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 5 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c6 <- ggplot() +
  geom_line(data=geumSYM_Chr6, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr6, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 6 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c7 <- ggplot() +
  geom_line(data=geumSYM_Chr7, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr7, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 7 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c8 <- ggplot() +
  geom_line(data=geumSYM_Chr8, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr8, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 8 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c9 <- ggplot() +
  geom_line(data=geumSYM_Chr9, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr9, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 9 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c10 <- ggplot() +
  geom_line(data=geumSYM_Chr10, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr10, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 10 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c11 <- ggplot() +
  geom_line(data=geumSYM_Chr11, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr11, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 11 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c12 <- ggplot() +
  geom_line(data=geumSYM_Chr12, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr12, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 12 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c13 <- ggplot() +
  geom_line(data=geumSYM_Chr13, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr13, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 13 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")



geumCOMP_c14 <- ggplot() + 
  geom_line(data=geumSYM_Chr14, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr14, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 14 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c15 <- ggplot() +
  geom_line(data=geumSYM_Chr15, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr15, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 15 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c16 <- ggplot() +
  geom_line(data=geumSYM_Chr16, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr16, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 16 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c17 <- ggplot() +
  geom_line(data=geumSYM_Chr17, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr17, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 17 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c18 <- ggplot() +
  geom_line(data=geumSYM_Chr18, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr18, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") + 
  scale_x_continuous("Position on Chr 18 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")


geumCOMP_c19 <- ggplot() +
  geom_line(data=geumSYM_Chr19, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr19, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 19 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")



geumCOMP_c20 <- ggplot() +
  geom_line(data=geumSYM_Chr20, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr20, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") + 
  scale_x_continuous("Position on Chr 20 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")



geumCOMP_c21 <- ggplot() +
  geom_line(data=geumSYM_Chr21, aes(x=window_midpoint, y=d_xy, group=1),color = "#FF7E79", linetype="solid") +
  geom_line(data=geum_Chr21, aes(x=window_midpoint, y=d_xy, group=1),color = "#4472C4", linetype="longdash") +
  scale_x_continuous("Position on Chr 21 (Mb)", labels = unit_format(unit = "M", scale = 1e-6)) +
  ylab("Dxy") +
  theme_minimal() +
  theme(plot.title = element_text(size = 12, color = "black",hjust = 0.5),
        axis.ticks = element_line(color = "black"),
        axis.line = element_line(color = "black"),
        axis.text.x = element_text(color = "black", size =11, face="bold"),
        axis.text.y = element_text(color = "black", size =11, face="bold"),
        axis.title.x = element_text(size =10, face="bold", margin = margin(t = 10)),
        axis.title.y = element_text(size =10, face="bold.italic", margin = margin(r = 10)),
        legend.position = "none") +
  geom_hline(yintercept = 0.0141, color="black")





pdffn = "Geum_Dxy_allosym.pdf"
pdf(pdffn, width=9, height=9)

Q <- ggarrange(geumCOMP_c1,geumCOMP_c2,geumCOMP_c3,geumCOMP_c4,
               geumCOMP_c5,geumCOMP_c6,geumCOMP_c7,
               geumCOMP_c8,geumCOMP_c9,geumCOMP_c10,geumCOMP_c11,
               geumCOMP_c12,geumCOMP_c13,geumCOMP_c14,
               geumCOMP_c15,geumCOMP_c16,geumCOMP_c17,geumCOMP_c18,
               geumCOMP_c19,geumCOMP_c20,geumCOMP_c21, ncol=1, nrow=3)
Q

dev.off()



