library(PopGenome)

# define pops
a <- as.character(1:8) # P1
b <- as.character(9:16) # P2
c <- as.character(17:24) # P3
d <- as.character(25:32) # O

L_DF  <- list()
L_DF_THETA <- list()

DATASETS = c("Zero","One","Two","Three",
		"Four","Five","Six","Seven","Eight","Nine","Ten")

#DATASETS = c("Zero")
DATASETS = paste(DATASETS,"-Fasta", sep="")

# --------------------------------------------------------------------------------------------

for(xx in 1:length(DATASETS)){

    test <- readData(DATASETS[[xx]], FAST=TRUE)
    test <- set.populations(test, list(a,b,c))
    test <- set.outgroup(test, d)

    # df 
    test <- introgression.stats(test, l.smooth=FALSE)
    L_DF[[xx]] = test@df
    # df_theta
    # my_theta = (test@alpha_ABBA - test@alpha_BABA)/(test@alpha_ABBA + test@alpha_BABA)
    my_theta = test@df_theta
    my_theta[which(test@df<0)] = -my_theta[which(test@df<0)]
    L_DF_THETA[[xx]] = my_theta #test@df_theta

}

# Plots 
require(ggplot2)
require(reshape)

M1 = melt(L_DF)
M1$X2 = "df"
M2 = melt(L_DF_THETA)
M2$X2 = "df_theta"

FINAL = rbind(M1,M2)
colnames(FINAL) = c("file","method","estimate","fraction")
FINAL$fraction = factor(FINAL$fraction, levels=11:1)

#geom_boxplot(outlier.shape = NA)
sp <- ggplot(data = FINAL, aes(x=fraction, y=estimate, fill=method))+ 
    geom_boxplot(outlier.shape = NA) + 
    scale_x_discrete(labels=as.character(seq(0,1,by=0.1))) +
    geom_hline(yintercept=seq(0,1,by=0.1), linetype="dashed") +
    scale_y_continuous(limits=c(-1,1), breaks = c(-1,-0.9,-0.8,-0.7,-0.6,-0.5, -0.4,-0.3,-0.2,-0.1,0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1)) #+
    #scale_fill_manual(name = "statistics", values = c("orange","light blue"), labels = c("0" = "Foo", "1" = "Bar","2"="B"))
