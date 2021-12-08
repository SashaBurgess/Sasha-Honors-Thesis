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

write.csv(sMCH, "/Users/Sasha.L.Burgess/Documents/GitHub/Sasha-Honors-Thesis/Final-tables/sig_SOMCHvsOOMCH.csv")
