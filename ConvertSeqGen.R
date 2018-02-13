convertSeqGen <- function(fileIN, fileOUT){

print(fileIN)
print(fileOUT)

IN  <- file(fileIN, "r")
OUT <- file(fileOUT, "w")

## Get dimension of file
line      <- readLines(IN, n=1)
n.samples <- as.numeric(substr(line,1,3))

print(n.samples)

count <- 0 
while (count < n.samples) {

	line      <- readLines(IN, n=1)
	name      <- paste(">",substr(line,1,3),sep="")
	cat(name,"\n",file=OUT)
	line      <- gsub('[0-9]','',line)
	line      <- gsub(' ','',line)
	cat(line,"\n",file=OUT)
	count <- count + 1
	
}

close(IN)
close(OUT)
}

ConvSeqGen    <- function(folderIN, folderOUT){

dir.create(folderOUT)
seq.files <- list.files(folderIN)#,full.names=TRUE)
seq.files2 <- list.files(folderIN,full.names=TRUE)


for (xx in 1:length(seq.files)){

	out <- paste(folderOUT,"/",seq.files[xx],".fas",sep="")
	convertSeqGen(seq.files2[xx],out)

}

}

ConvSeqGenALL <- function(){

ConvSeqGen("Zero-raw","Zero-Fasta")
ConvSeqGen("One-raw","One-Fasta")
ConvSeqGen("Two-raw","Two-Fasta")
ConvSeqGen("Three-raw","Three-Fasta")
ConvSeqGen("Four-raw","Four-Fasta")
ConvSeqGen("Five-raw","Five-Fasta")
ConvSeqGen("Six-raw","Six-Fasta")
ConvSeqGen("Seven-raw","Seven-Fasta")
ConvSeqGen("Eight-raw","Eight-Fasta")
ConvSeqGen("Nine-raw","Nine-Fasta")
ConvSeqGen("Ten-raw","Ten-Fasta")
}


