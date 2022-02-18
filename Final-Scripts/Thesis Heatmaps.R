countdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/countdata.csv", row.names = 1)
groups<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/groups.csv", row.names = 1)
cpmdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/cpmdata.csv", row.names = 1)

sig_SOMCHvsOOMCH<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOMCHvsOOMCH.csv", row.names = 1)
sig_SOFCHvsOOFCH<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOFCHvsOOFCH.csv", row.names = 1)
sig_SOMCTvsOOMCT<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOMCTvsOOMCT.csv", row.names = 1)
sig_SOFCTvsOOFCT<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOFCTvsOOFCT.csv", row.names = 1)
sig_SOMCAvsOOMCA<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOMCAvsOOMCA.csv", row.names = 1)
sig_SOFCAvsOOFCA<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOFCAvsOOFCA.csv", row.names = 1)

controldata<-cpmdata[,c("OOMCT1","OOMCT2","OOMCT3","SOMCT1","SOMCT2","SOMCT3","OOFCT1","OOFCT3","OOFCT4","SOFCT1","SOFCT3","SOFCT5")]
Male.thorax.names<-rownames(sMCT)
Male.abdomen.names<-rownames(sMCA)
Male.head.names<-rownames(sMCH)
Female.thorax.names<-rownames(sFCT)
Female.abdomen.names<-rownames(sFCA)
Female.head.names<-rownames(sFCH)

allnames=c(Male.thorax.names, Female.thorax.names,)
newcpmdata<-cpmdata[allnames,]
controldata<-newcpmdata

dataset=controldata[1:1000,]
scaled=(t(scale(t(dataset))))
scaled[scaled=="NaN"]=1
colors=c("royalblue","darkgreen","gold","firebrick","royalblue","deeppink")
hc <- hclust(dist(scaled), "complete")
heights=sort(hc$height,decreasing = T)
cutheight=heights[4]
dnd=cut(as.dendrogram(hc),h=cutheight)
branchcolors=colors[1:length(dnd$lower)]
colordend=(color_branches(hc, h=cutheight))
nacolor= rgb(0,0,0,
             max = 255,
             alpha = (0) * 255 / 100)
##scaled[hmdata==0]=NA
##colordend=(color_branches(hc, h=cutheight, col=branchcolors))
##heatmap.2(scaled,trace="none",col=hmcolors,dendrogram = "row",Rowv=colordend,Colv="NA",cexRow = .1,na.color=nacolor)
##heatmap.2(scaled[,c("FN3","LN3","FN6","LN6","FV3","LV3","FV6","LV6")],trace="none",col=hmcolors,dendrogram = "row",Rowv=colordend,Colv="NA",cexRow = .1,na.color=nacolor)

URhm=heatmap.2(as.matrix(scaled),trace="none",
               col=RdYlBu(100)[100:1],
               dendrogram = "both",Rowv=colordend,Colv=T,cexRow = .1,na.color=nacolor,key.xlab="# of genes in cat (log10)",key.xtickfun=)
return(URhm)
}

clusternum=4
dnd=cut(as.dendrogram(hc),h=cutheight)
cluster=na.omit(row.names(scaled)[unlist(dnd$lower[[clusternum]])])
heatmap.2(as.matrix(cpmdata[cluster,c("OOMCT1","OOMCT2","OOMCT3","SOMCT1","SOMCT2","SOMCT3")]),trace="none",
          col=RdYlBu(100)[100:1],scale="row",
          dendrogram = "none",Rowv=T,Colv=F,cexRow = .1,cexCol=0.5,na.color=nacolor,key.xlab="# of genes in cat (log10)")
