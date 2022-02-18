library(edgeR)
library(plot3D)
library("DESeq2")
library(heatmaply)
library(gplots)
library(tidyverse)
library(annotate)
library(EnhancedVolcano)
library(org.Mm.eg.db)


countdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/countdata.csv", row.names = 1)
groups<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/groups.csv", row.names = 1)
cpmdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/cpmdata.csv", row.names = 1)


sig_SOMCTvsOOMCT<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOMCTvsOOMCT.csv", row.names = 1)
sig_SOFCTvsOOFCT<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOFCTvsOOFCT.csv", row.names = 1)



deanalysis=sig_SOMCTvsOOMCT
Title= "Volcano Plot SOMCTvsOOMCT comparison"

sigde=deanalysis[deanalysis[,"FDR"]<=.05,]
userLog2fc = 2.0
userFDR = 0.05
colorStyle="RedBlue"
axisLab = 25

ENSEMBLList <- as.list(org.Dm.eg.db)
deanalysis$geneid <- ENSEMBLList[row.names(deanalysis)]


deanalysis$genesymbol <- lookUp(as.character(deanalysis$geneid), 'org.Mm.eg', 'SYMBOL')
deanalysis=as.matrix(deanalysis)

plot <- EnhancedVolcano(deanalysis,
                        lab = deanalysis$genesymbol,
                        x = "logFC",
                        y = "FDR",
                        xlim = c(-6, 10),ylim = c(0, 6),
                        title = Title,
                        caption = paste('FC cutoff = ',sprintf("%.1f", round(userLog2fc,1)),', FDR cutoff = ',userFDR),
                        xlab = bquote(~Log[2]~ "fold change"),
                        ylab = bquote(~-Log[10]~adjusted~italic(P)/FDR),
                        axisLabSize = axisLab, #default = 18
                        pCutoff = userFDR,
                        FCcutoff = userLog2fc,
                        labSize = 3,
                        colAlpha = 1,
                        legend=c('NS','Log2 FC','Adjusted p-value (FDR)',
                                 'Adjusted p-value & Log2 FC'),
                        legendPosition = 'top',
                        legendLabSize = 10,
                        legendIconSize = 3.0)


