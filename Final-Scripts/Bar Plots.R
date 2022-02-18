countdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/countdata.csv", row.names = 1)
groups<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/groups.csv", row.names = 1)
cpmdata<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/cpmdata.csv", row.names = 1)

sig_SOMCHvsOOMCH<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOMCHvsOOMCH.csv", row.names = 1)
sig_SOFCHvsOOFCH<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOFCHvsOOFCH.csv", row.names = 1)
sig_SOMCTvsOOMCT<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOMCTvsOOMCT.csv", row.names = 1)
sig_SOFCTvsOOFCT<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOFCTvsOOFCT.csv", row.names = 1)
sig_SOMCAvsOOMCA<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOMCAvsOOMCA.csv", row.names = 1)
sig_SOFCAvsOOFCA<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/sig_SOFCAvsOOFCA.csv", row.names = 1)

SOMCHvsOOMCH<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/SOMCHvsOOMCH.csv", row.names = 1)
SOFCHvsOOFCH<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/SOFCHvsOOFCH.csv", row.names = 1)
SOMCTvsOOMCT<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/SOMCTvsOOMCT.csv", row.names = 1)
SOFCTvsOOFCT<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/SOFCTvsOOFCT.csv", row.names = 1)
SOMCAvsOOMCA<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/SOMCAvsOOMCA.csv", row.names = 1)
SOFCAvsOOFCA<-read.csv("https://raw.githubusercontent.com/SashaBurgess/Sasha-Honors-Thesis/main/Final-tables/SOFCAvsOOFCA.csv", row.names = 1)

MH<-count(sig_SOMCHvsOOMCH)
FH<-count(sig_SOFCHvsOOFCH)
MT<-count(sig_SOMCTvsOOMCT)
FT<-count(sig_SOFCTvsOOFCT)
MA<-count(sig_SOMCAvsOOMCA)
FA<-count(sig_SOFCAvsOOFCA)

allcounts<-cbind(35,12,1866,122,6,15)
colnames(allcounts)=c("SOMCHvsOOMCH","SOFCHvsOOFCH","SOMCTvsOOMCT","SOFCTvsOOFCT","SOMCAvsOOMCA","SOFCAvsOOFCA")

barplot(allcounts, main = "Significant Differentiated Genes-SO vs OO in Control Flies", ylab = "Sig Diff Genes", names.arg = c("Male Head","Female Head","Male Thorax","Female Thorax","Male Abdomen","Female Abdomen"), col = c("red","red","blue","blue","green","green"), cex.axis = 1, cex.lab=1, cex.names=1, cex.main=1, ylim=c(0,2000))
