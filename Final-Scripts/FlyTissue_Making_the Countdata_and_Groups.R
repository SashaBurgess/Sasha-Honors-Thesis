a<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCA1_1_CountTable.txt", sep = "\t", row.names = 1)
gene.order <- row.names(a)
columnnames <- "OOMCA1"
b<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCA2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMCA2")
c<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCA3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMCA3")
d<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCH1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMCH1")
e<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCH2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMCH2")
f<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCH3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMCH3")
g<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCT1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMCT1")
h<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCT2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMCT2")
i<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMCT3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMCT3")
j<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRA1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRA1")
k<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRA2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRA2")
l<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRA3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRA3")
m<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRH1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRH1")
n<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRH2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRH2")
o<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRH3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRH3")
p<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRT1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRT1")
q<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRT2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRT2")
r<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOMRT3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOMRT3")
##########

s<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCA1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCA1")
t<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCA3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCA3")
u<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCA4_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCA4")
v<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCH1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCH1")
w<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCH3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCH3")
x<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCH4_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCH4")
y<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCT1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCT1")
z<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCT3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCT3")
aa<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFCT4_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFCT4")
bb<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRA1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRA1")
cc<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRA5_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRA5")
dd<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRA6_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRA6")
ee<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRH1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRH1")
ff<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRH5_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRH5")
gg<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRH6_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRH6")
hh<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRT1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRT1")
ii<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRT5_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRT5")
jj<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/OOFRT6_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"OOFRT6")
###########

kk<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCA1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCA1")
ll<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCA2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCA2")
mm<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCA3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCA3")
nn<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCH1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCH1")
oo<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCH2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCH2")
pp<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCH3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCH3")
qq<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCT1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCT1")
rr<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCT2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCT2")
ss<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMCT3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMCT3")
tt<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRA1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRA1")
uu<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRA2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRA2")
vv<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRA3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRA3")
ww<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRH1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRH1")
xx<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRH2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRH2")
yy<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRH3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRH3")
zz<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRT1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRT1")
aaa<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRT2_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRT2")
bbb<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOMRT3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOMRT3")
##########

ccc<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/tempSOFCA1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCA1")
ddd<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFCA3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCA3")
eee<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFCA5_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCA5")
fff<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFCH1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCH1")
ggg<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFCH3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCH3")
hhh<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFCH5_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCH5")
iii<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFCT1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCT1")
jjj<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFCT3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCT3")
kkk<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFCT5_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFCT5")
lll<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRA1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRA1")
mmm<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRA3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRA3")
nnn<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRA4_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRA4")
ooo<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRH1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRH1")
ppp<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRH3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRH3")
qqq<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRH4_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRH4")
rrr<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRT1_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRT1")
sss<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRT3_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRT3")
ttt<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Count-tables/SOFRT4_1_CountTable.txt", sep = "\t", row.names = 1)
columnnames = c(columnnames,"SOFRT4")

countdata<- cbind(a,b[gene.order,],c[gene.order,],d[gene.order,],e[gene.order,],f[gene.order,],g[gene.order,],h[gene.order,],i[gene.order,],j[gene.order,],k[gene.order,],l[gene.order,],m[gene.order,],n[gene.order,],o[gene.order,],p[gene.order,],q[gene.order,],r[gene.order,],s[gene.order,],t[gene.order,],u[gene.order,],v[gene.order,],w[gene.order,],x[gene.order,],y[gene.order,],z[gene.order,],aa[gene.order,],bb[gene.order,],cc[gene.order,],dd[gene.order,],ee[gene.order,],ff[gene.order,],gg[gene.order,],hh[gene.order,],ii[gene.order,],jj[gene.order,],kk[gene.order,],ll[gene.order,],mm[gene.order,],nn[gene.order,],oo[gene.order,],pp[gene.order,],qq[gene.order,],rr[gene.order,],ss[gene.order,],tt[gene.order,],uu[gene.order,],vv[gene.order,],ww[gene.order,],xx[gene.order,],yy[gene.order,],zz[gene.order,],aaa[gene.order,],bbb[gene.order,],ccc[gene.order,],ddd[gene.order,],eee[gene.order,],fff[gene.order,],ggg[gene.order,],hhh[gene.order,],iii[gene.order,],jjj[gene.order,],kkk[gene.order,],lll[gene.order,],mmm[gene.order,],nnn[gene.order,],ooo[gene.order,],ppp[gene.order,],qqq[gene.order,],rrr[gene.order,],sss[gene.order,],ttt[gene.order,])
colnames(countdata)=columnnames
head(countdata)

groups<-data.frame(Species=rep(c("OO", "SO"), each=36), Sex=rep(c("Male","Female","Male","Female"), each=18), Treatment=rep(c("Control","Rapa","Control","Rapa","Control","Rapa","Control","Rapa"), each=9), Tissue=rep(c("Abdomen","Head","Thorax","Abdomen","Head","Thorax","Abdomen","Head","Thorax","Abdomen","Head","Thorax","Abdomen","Head","Thorax","Abdomen","Head","Thorax","Abdomen","Head","Thorax","Abdomen","Head","Thorax"), each=3), Replicate=substring(columnnames,6,6), Group=0)

rownames(groups)=columnnames

groups$Group=substring(row.names(groups),1,5)

library(edgeR)
library(plot3D)
library("DESeq2")
library(heatmaply)
library(gplots)
library(tidyverse)
library(annotate)
library(EnhancedVolcano)
library(org.Mm.eg.db)


countdata=countdata[,row.names(groups)]
cut=countdata[1,]>0
groups=groups[cut,]

write.csv(countdata,"/Users/Sasha.L.Burgess/Desktop/Thesis Bioinformatics/countdata.csv")
write.csv(groups,"/Users/Sasha.L.Burgess/Desktop/Thesis Bioinformatics/groups.csv")