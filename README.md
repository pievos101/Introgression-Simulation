# Introgression-Simulation


## Set-up and software needed

Hudson's ms program and the Seq-Gen software is needed to run the simulations.

Under Linux the Seq-Gen software can be installed using

```
apt-get install seq-gen
``` 

For more information please visit the official homepage http://tree.bio.ed.ac.uk/software/seqgen/.


The Hudson's ms program can be retrieved from https://home.uchicago.edu/~rhudson1/source/mksamples.html. An installation manual is also provided. The ms executable file must be stored at the working directory in R (getwd()).


Finally, the R-package PopGenome must be installed


```R
install.packages("devtools")
library(devtools)

devtools::install_github("pievos101/PopGenome")
library(PopGenome)
```

## Simulations 

The following calls will create 100 sequences of length 5kB. The evolutionary parameter aer set within the bash file simSeq.sh.

```R
# ms and seq-gen
system("./simSeq.sh")

# convert to PopGenome readable files 
source("ConvertSeqGen.R")
ConvSeqGenALL()
```

The created files can be analyzed using the calc_sim.R and calc_dfBF.R files. Here is an example on how to analyze the simulated data using PopGenome.

```R
 
library(PopGenome)

#define pops
a <- as.character(1:8) # P1
b <- as.character(9:16) # P2
c <- as.character(17:24) # P3
d <- as.character(25:32) # O


DATASETS = c("Zero-Fasta") # fraction of introgression f=1 


test <- readData(DATASETS, FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# introgression statst
test <- introgression.stats(test, l.smooth=FALSE)

df   = test@df
dfBF = test@df_bayes
```

## Application 

The genomic data can be retrieved from https://datadryad.org/stash/dataset/doi:10.5061/dryad.f4114.

```R
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
genome  = set.outgroup(genome, Chris, diploid=TRUE)

# Perform the weighted jackknife for the inverted region

# Split the data into 50kb windows within the inversion
slide =
sliding.window.transform(genome,jump=10000,width=10000, type=2)

# Perform the introgression statistics
slide  = introgression.stats(slide, lambda=5)

slide@df
slide@df_bayes

```
