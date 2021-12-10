countdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/countdata.csv", row.names = 1)

groups<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/groups.csv", row.names = 1)

countdata=countdata[,row.names(groups)]
cut=countdata[1,]>0
groups=groups[cut,]

##EdgeR comparisons
x <- countdata[,cut]
group <- factor(groups$Group)
y <- DGEList(counts=x,group=group)
keep <- filterByExpr(y)
y <- y[keep,,keep.lib.sizes=FALSE] 
z <- calcNormFactors(y, method = "TMM") 
mz=z
cpmdata=cpm(z,base=2)

design<-model.matrix(~0+group)
colnames(design) <- levels(group)
z = estimateGLMCommonDisp(z,design, verbose=T)
z = estimateGLMTrendedDisp(z,design)
z = estimateGLMTagwiseDisp(z,design)
fit <- glmFit(z, design)

compare = makeContrasts(SOMCH-OOMCH, levels=design)
lrt <- glmLRT(fit,contrast=as.vector(compare))		
G_X_E<-topTags(lrt,adjust.method="BH",n = nrow(z$counts), sort.by="PValue")
MCH=G_X_E$table
sMCH=MCH[MCH$FDR<.05,]
dim(sMCH)

compare = makeContrasts(SOFCH-OOFCH, levels=design)
lrt <- glmLRT(fit,contrast=as.vector(compare))		
G_X_E<-topTags(lrt,adjust.method="BH",n = nrow(z$counts), sort.by="PValue")
FCH=G_X_E$table
sFCH=FCH[FCH$FDR<.05,]
dim(sFCH)

compare = makeContrasts(SOMCT-OOMCT, levels=design)
lrt <- glmLRT(fit,contrast=as.vector(compare))		
G_X_E<-topTags(lrt,adjust.method="BH",n = nrow(z$counts), sort.by="PValue")
MCT=G_X_E$table
sMCT=MCT[MCT$FDR<.05,]
dim(sMCT)

compare = makeContrasts(SOFCT-OOFCT, levels=design)
lrt <- glmLRT(fit,contrast=as.vector(compare))		
G_X_E<-topTags(lrt,adjust.method="BH",n = nrow(z$counts), sort.by="PValue")
FCT=G_X_E$table
sFCT=FCT[FCT$FDR<.05,]
dim(sFCT)

compare = makeContrasts(SOMCA-OOMCA, levels=design)
lrt <- glmLRT(fit,contrast=as.vector(compare))		
G_X_E<-topTags(lrt,adjust.method="BH",n = nrow(z$counts), sort.by="PValue")
MCA=G_X_E$table
sMCA=MCA[MCA$FDR<.05,]
dim(sMCA)

compare = makeContrasts(SOFCA-OOFCA, levels=design)
lrt <- glmLRT(fit,contrast=as.vector(compare))		
G_X_E<-topTags(lrt,adjust.method="BH",n = nrow(z$counts), sort.by="PValue")
FCA=G_X_E$table
sFCA=FCA[FCA$FDR<.05,]
dim(sFCA)

write.csv(sMCH, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/sig_SOMCHvsOOMCH.csv")
write.csv(MCH, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/SOMCHvsOOMCH.csv")
write.csv(sFCH, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/sig_SOFCHvsOOFCH.csv")
write.csv(FCH, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/SOFCHvsOOFCH.csv")
write.csv(sMCT, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/sig_SOMCTvsOOMCT.csv")
write.csv(MCT, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/SOMCTvsOOMCT.csv")
write.csv(sFCT, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/sig_SOFCTvsOOFCT.csv")
write.csv(FCT, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/SOFCTvsOOFCT.csv")
write.csv(sMCA, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/sig_SOMCAvsOOMCA.csv")
write.csv(MCA, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/SOMCAvsOOMCA.csv")
write.csv(sFCA, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/sig_SOFCAvsOOFCA.csv")
write.csv(FCA, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/SOFCAvsOOFCA.csv")
#write.csv(cpmdata,"/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/cpmdata.csv")

colnames(cpmdata)[43:45]
design$SOMCT
