install.packages("tidyverse")
library(tidyverse)
setwd("Linkoping University/Data/test_download/FeatureCounts_studyGSE161777/")
selected_sample<-read.table("selected_sample.txt", header=T,"\t")
colnames(selected_sample)
FC <- read.table("Output_Merged_FC_ss.txt",header = T, sep="\t")
colnames(FC)
row.names(FC)<-FC$ENSEMBL_ID

row.names(a)
topGenes<-FC %>% filter(FC$ENSEMBL_ID == "ENSG00000100266"|FC$ENSEMBL_ID =="ENSG00000198336")
rownames(topGenes)
subset_samples_TopGenes<-topGenes %>% select(starts_with(selected_sample$Sample_ID))
colnames(subset_samples_TopGenes)
colnames(subset_samples_TopGenes)

colnames(subset_samples_TopGenes)<-c("PC1_L1","PC1_L2","PC4_L1","PC4_L2","PC5_L1","PC5_L2","PC6_L1","PC6_L2","PC7_L1","PC7_L2","PC8_L1","PC8_L2","PC9_L1","PC9_L2","PC10_L1","PC10_L2","PC11_L1","PC11_L2","PC12_L1","PC12_L2","PC13_L1","PC13_L2","PC14_L1","PC14_L2","H011_L1","H011_L2","H012_L1","H012_L2","H013_L1","H013_L2","H014_L1","H014_L2","H09_L1","H010_L1","H001_L1","H002_L1","H003_L1","H004_L1","H005_L1","H006_L1","H007_L1","H008_L1")

write.table(subset_samples_TopGenes,"FC_4_subsetCols_TopGenes.txt",sep = "\t",quote = F)

line(subset_samples_TopGenes)
PACSIN<-"ENSG00000100266"
MYL4<-"ENSG00000198336"
