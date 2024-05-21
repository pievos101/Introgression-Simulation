# define pops
library(PopGenome)


a <- as.character(1:8) # P1
b <- as.character(9:16) # P2
c <- as.character(17:24) # P3
d <- as.character(25:32) # O


#a <- as.character(1:20) # P1
#b <- as.character(21:40) # P2
#c <- as.character(41:60) # P3
#d <- as.character(61:80) # O



LAMBDA = c(8)
ALL = list()



for(aa in 1:length(LAMBDA)){

dfBF  <- list()

DATASETS = c("Zero","One","Two","Three",
		"Four","Five","Six","Seven","Eight","Nine","Ten")

#DATASETS = c("Zero")
DATASETS = paste(DATASETS,"-Fasta", sep="")


for (xx in 1:length(DATASETS)){

	test <- readData(DATASETS[xx], FAST=TRUE)
	test <- set.populations(test, list(a,b,c))
	test <- set.outgroup(test, d)

	# Bd
	test <- introgression.stats(test, l.smooth=FALSE, lambda=LAMBDA[aa])

	dfBF[[xx]] = test@df_bayes

print(test@df_bayes)

}
ALL[[aa]] = dfBF
}

names(ALL) = LAMBDA

library(reshape)
library(ggplot2)

RES_m = melt(ALL[[1]])
colnames(RES_m) = c("file","method","BF","fraction")
#RES_m$lambda = factor(RES_m$lambda, levels=LAMBDA, labels=paste("lambda_prior=",LAMBDA, 
	
#
#															sep=""))
RES_m$fraction = factor(RES_m$fraction, levels=seq(11,1,-1))

p <- ggplot(RES_m, aes(x=fraction, y=BF)) +
  geom_boxplot() +
  #theme_minimal()  + 
  theme(text = element_text(size=12)) +
  scale_x_discrete(breaks= 1:11, labels=seq(1,0,-0.1)) +
  scale_y_continuous(breaks= c(3,10,30,50,100)) +
  geom_hline(yintercept=3, linetype="dashed", color = "black")+
  geom_hline(yintercept=10, linetype="dashed", color = "black")+
  geom_hline(yintercept=30, linetype="dashed", color = "black")+
  geom_hline(yintercept=100, linetype="dashed", color = "black") +
  #facet_wrap(~factor(lambda),scales = "free") +
  ggtitle("10kb genomic regions") +
  ylim(0,150) +
  xlab("Fraction of Introgression (f)")+
  ylab("Bayes Factors (dfBF)")
  
p

##########################
#######################
D1 = read.table("TIME_0_1.txt")
D2 = read.table("TIME_0_1_s.txt")

D1 = cbind(D1,"unscaled")
D2 = cbind(D2,"scaled")
colnames(D1) = c("file","method","BF","fraction","scaling")
colnames(D2) = c("file","method","BF","fraction","scaling")

RES_m = rbind(D1,D2)

colnames(RES_m) = c("file","method","BF","fraction","scaling")
#RES_m$lambda = factor(RES_m$lambda, levels=LAMBDA, labels=paste("lambda_prior=",LAMBDA, 
	
#
#															sep=""))
RES_m$fraction = factor(RES_m$fraction, levels=seq(11,1,-1))
RES_m$scaling = factor(RES_m$scaling, levels=c("unscaled","scaled"))


p <- ggplot(RES_m, aes(x=fraction, y=BF)) +
  geom_boxplot() +
  #theme_minimal()  + 
  theme(text = element_text(size=12)) +
  scale_x_discrete(breaks= 1:11, labels=seq(1,0,-0.1)) +
  scale_y_continuous(breaks= c(3,10,30,50,100)) +
  geom_hline(yintercept=3, linetype="dashed", color = "black")+
  geom_hline(yintercept=10, linetype="dashed", color = "black")+
  geom_hline(yintercept=30, linetype="dashed", color = "black")+
  geom_hline(yintercept=100, linetype="dashed", color = "black") +
  facet_wrap(~factor(scaling),scales = "free") +
  ylim(0,150) +
  xlab("Fraction of Introgression (f)")+
  ylab("Bayes Factors (dfBF)")
  
p

#grid.arrange(p1, p2, nrow = 1)