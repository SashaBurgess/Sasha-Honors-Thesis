countdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/countdata.csv", row.names = 1)

groups<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/groups.csv", row.names = 1)

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

#######Everything######
pca <- prcomp(t(cpmdata), scale.=TRUE) 
pointSize = 5
autoplot(pca)

#######HeadControl######
HeadSamples<-row.names(groups)[groups$Tissue=="Head"&groups$Treatment=="Control"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,HeadSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 5
pca <- prcomp(t(cpmdata[names(good),HeadSamples]), scale.=TRUE)
gr <- as.data.frame(groups[HeadSamples,])
autoplot(pca, data=gr, shape="Sex", colour="Species", size=pointSize, main="Head")

######AbdomenControl######
AbdomenSamples<-row.names(groups)[groups$Tissue=="Abdomen"&groups$Treatment=="Control"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,AbdomenSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 5
pca <- prcomp(t(cpmdata[names(good),AbdomenSamples]), scale.=TRUE)
gr <- as.data.frame(groups[AbdomenSamples,])
autoplot(pca, data=gr, shape="Sex", colour="Species", size=pointSize, main="Abdomen")

######ThoraxControl######
ThoraxSamples<-row.names(groups)[groups$Tissue=="Thorax"&groups$Treatment=="Control"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,ThoraxSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 5
pca <- prcomp(t(cpmdata[names(good),ThoraxSamples]), scale.=TRUE)
gr <- as.data.frame(groups[ThoraxSamples,])
autoplot(pca, data=gr, shape="Sex", colour="Species", size=pointSize, main="Thorax")

######MalesControl######
MaleSamples<-row.names(groups)[groups$Sex=="Male"&groups$Treatment=="Control"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,MaleSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 3
pca <- prcomp(t(cpmdata[names(good),MaleSamples]), scale.=TRUE)
gr <- as.data.frame(groups[MaleSamples,])
autoplot(pca, data=gr, shape="Tissue", colour="Species", size=pointSize, main="Male control")

######FemalesControl######
FemaleSamples<-row.names(groups)[groups$Sex=="Female"&groups$Treatment=="Control"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,FemaleSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 3
pca <- prcomp(t(cpmdata[names(good),FemaleSamples]), scale.=TRUE)
gr <- as.data.frame(groups[FemaleSamples,])
autoplot(pca, data=gr, shape="Tissue", colour="Species", size=pointSize, main="Female control")

######MalesControlHead######
MaleHeadSamples<-row.names(groups)[groups$Sex=="Male"&groups$Treatment=="Control"&groups$Tissue=="Head"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,MaleHeadSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 3
pca <- prcomp(t(cpmdata[names(good),MaleHeadSamples]), scale.=TRUE)
gr <- as.data.frame(groups[MaleHeadSamples,])
autoplot(pca, data=gr, shape="Tissue", colour="Species", size=pointSize, main="Male head control")

######MalesHead######
MaleHeadSamples<-row.names(groups)[groups$Sex=="Male"&groups$Tissue=="Head"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,MaleHeadSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 3
pca <- prcomp(t(cpmdata[names(good),MaleHeadSamples]), scale.=TRUE)
gr <- as.data.frame(groups[MaleHeadSamples,])
autoplot(pca, data=gr, shape="Treatment", colour="Species", size=pointSize, main="Male head")

######MalesControlAbdomen######
MaleAbdoSamples<-row.names(groups)[groups$Sex=="Male"&groups$Treatment=="Control"&groups$Tissue=="Abdomen"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,MaleAbdoSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 3
pca <- prcomp(t(cpmdata[names(good),MaleAbdoSamples]), scale.=TRUE)
gr <- as.data.frame(groups[MaleAbdoSamples,])
autoplot(pca, data=gr, shape="Tissue", colour="Species", size=pointSize, main="Male Abdomen control")

######MalesAbdomen######
MaleAbdoSamples<-row.names(groups)[groups$Sex=="Male"&groups$Tissue=="Abdomen"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,MaleAbdoSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 3
pca <- prcomp(t(cpmdata[names(good),MaleAbdoSamples]), scale.=TRUE)
gr <- as.data.frame(groups[MaleAbdoSamples,])
autoplot(pca, data=gr, shape="Treatment", colour="Species", size=pointSize, main="Male abdomen")

######MalesControlHead######
MaleThoraxSamples<-row.names(groups)[groups$Sex=="Male"&groups$Treatment=="Control"&groups$Tissue=="Thorax"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,MaleThoraxSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 3
pca <- prcomp(t(cpmdata[names(good),MaleThoraxSamples]), scale.=TRUE)
gr <- as.data.frame(groups[MaleThoraxSamples,])
autoplot(pca, data=gr, shape="Tissue", colour="Species", size=pointSize, main="Male Thorax control")

######MalesHead######
MaleThoraxSamples<-row.names(groups)[groups$Sex=="Male"&groups$Tissue=="Thorax"]
blank<- rep(0,length(row.names(cpmdata)))
names(blank)<-row.names(cpmdata)
i2<-1 
while(i2<=length(blank)){
  blank[i2]=sum(cpmdata[i2,MaleThoraxSamples])
  i2=i2+1
}
good<-blank[blank>0]

pointSize = 3
pca <- prcomp(t(cpmdata[names(good),MaleThoraxSamples]), scale.=TRUE)
gr <- as.data.frame(groups[MaleThoraxSamples,])
autoplot(pca, data=gr, shape="Treatment", colour="Species", size=pointSize, main="Male Thorax")