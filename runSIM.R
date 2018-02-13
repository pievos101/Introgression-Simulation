#seq-gen must be installed
#ms executable have be in the same workspace
#run within R

# ms and seq-gen
system("./simSeq.sh")

# convert to PopGenome readable files 
source("ConvertSeqGen.R")
ConvSeqGenALL()

#calculate the statistics
source("calc_sim.R")

#plot the results (ggplot needed)
source("gg_boxplot.R")
