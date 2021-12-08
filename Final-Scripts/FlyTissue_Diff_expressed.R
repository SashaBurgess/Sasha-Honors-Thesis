countdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/countdata.csv", row.names = 1)

groups<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/groups.csv", row.names = 1)

countdata=countdata[,row.names(groups)]
cut=countdata[1,]>0
groups=groups[cut,]

##EdgeR comparisons
x2 <- countdata[,cut]
group <- factor(groups$Group)
y2 <- DGEList(counts=x2,group=group)
keep <- filterByExpr(y2)
y2 <- y2[keep,,keep.lib.sizes=FALSE] 
z2 <- calcNormFactors(y2, method = "TMM") 
mz=z2
cpmdata=cpm(z2,base=2)