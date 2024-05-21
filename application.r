library(PopGenome)
genome =
readVCF("AGC_refHC_bialSNP_AC2_2DPGQ.3L_V2.CHRcode2.DRYAD.vcf.gz",
10000,"4",1,45000000, include.unknown=TRUE)
# Define the populations
Aquad = c("SRS408143", "SRS408145", "SRS408151", "SRS408155",
"SRS408966", "SRS408969", "SRS408972", "SRS408973", "SRS408983",
"SRS420578")
Amela = c("SRS408142", "SRS408185", "SRS408994")
Ameru = c("SRS408186", "SRS408187", "SRS408967", "SRS408974",
"SRS408992", "SRS410266","SRS410284", "SRS410286", "SRS410290",
"SRS420577")
# Define the outgroup
Chris = c("CHRISTYI")
# Set the populations
genome = set.populations(genome, list(Aquad,Amela,Ameru),diploid=TRUE)
# Set the outgroup
genome = set.outgroup(genome, Chris, diploid=TRUE)
# 
inversionStart=1.45e07
inversionEnd=3.575e07
# Split the data into 50kb windows 
slide =
sliding.window.transform(genome,jump=5000,width=5000,type=2)
# Perform the introgression statistics
slide = introgression.stats(slide, lambda=5)

df = slide@df
df_theta = slide@df_theta
df_bayes = slide@df_bayes
pos = seq(1, 45000000, by= 10000)-1

RES = cbind(pos, df, df_theta, df_bayes)
colnames(RES) = c("position","df","df_theta","df_BF")


#plots
library(ggplot2)
library(reshape)

RES = as.data.frame(RES)

p1 = ggplot(RES, aes(x=position, y=df, color=df_BF)) +
        geom_point() +
        geom_smooth(method = "loess") +
        scale_color_gradient(low="black", high="orange")+
        ylim(c(-1,1)) +
        ylab("Estimate of introgression (df)") +
        xlab("Genomic position (kB)") 


p2 = ggplot(RES, aes(x=position, y=df_theta, color=df_BF)) +
        geom_point() +
        geom_smooth(method = "loess") +
        scale_color_gradient(low="black", high="orange")+
        ylim(c(0,1)) +
        ylab("Estimate of introgression (df_theta)") +
        xlab("Genomic position (kB)") 

p3 = ggplot(RES, aes(x=position, y=df_BF, color=df_BF)) +
        geom_point() +
        geom_smooth(method = "loess") +
        scale_color_gradient(low="black", high="orange")+
        #ylim(c(0,1)) +
        ylab("Evidence of introgression (df_BF)") +
        xlab("Genomic position (kB)") 


# ---------------- #
p4 = ggplot(RES, aes(y=df, x=df_BF, color=df_BF)) +
        geom_point() +
        scale_color_gradient(low="black", high="orange")+
        #ylim(c(0,200)) +
        ylab("Estimate of introgression (df)") +
        xlab("Evidence of introgression (df_BF)") 

library(gridExtra)
library(grid)
library(lattice)
library(ggpubr)
#grid.arrange(grobs=list(p1,p2,p3,p4), ncol=2)
ggarrange(p1, p2, p3, p4, ncol=2, nrow=2, 
common.legend = TRUE, legend="bottom")