# define pops

a <- as.character(1:8) # P1
b <- as.character(9:16) # P2
c <- as.character(17:24) # P3
d <- as.character(25:32) # O



newD  <- rep(NaN,11) # Bd
newD2 <- rep(NaN,11) # Bd-fraction
oldD  <- rep(NaN,11) # Patt-D
oldf  <- rep(NaN,11) # f-d

var_newD  <- rep(NaN,11)
var_newD2 <- rep(NaN,11)
var_oldD  <- rep(NaN,11)
var_oldf  <- rep(NaN,11)


LnewD  <- list()
LnewD2 <- list()
Loldf  <- list()
LoldD  <- list()

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Zero-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[1]     <- mean(test@BD, na.rm=TRUE)
var_newD[1] <- var(test@BD, na.rm=TRUE)
LnewD[[1]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[1]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[1] <- var(test@BDF, na.rm=TRUE)
LnewD2[[1]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[1] <- mean(test@D, na.rm=TRUE)
oldf[1] <- mean(test@f, na.rm=TRUE)
var_oldD[1] <- var(test@D, na.rm=TRUE)
var_oldf[1] <- var(test@f, na.rm=TRUE)
Loldf[[1]] <- test@f
LoldD[[1]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("One-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[2]     <- mean(test@BD, na.rm=TRUE)
var_newD[2] <- var(test@BD, na.rm=TRUE)
LnewD[[2]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[2]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[2] <- var(test@BDF, na.rm=TRUE)
LnewD2[[2]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[2] <- mean(test@D, na.rm=TRUE)
oldf[2] <- mean(test@f, na.rm=TRUE)
var_oldD[2] <- var(test@D, na.rm=TRUE)
var_oldf[2] <- var(test@f, na.rm=TRUE)
Loldf[[2]] <- test@f
LoldD[[2]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Two-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[3]     <- mean(test@BD, na.rm=TRUE)
var_newD[3] <- var(test@BD, na.rm=TRUE)
LnewD[[3]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[3]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[3] <- var(test@BDF, na.rm=TRUE)
LnewD2[[3]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[3] <- mean(test@D, na.rm=TRUE)
oldf[3] <- mean(test@f, na.rm=TRUE)
var_oldD[3] <- var(test@D, na.rm=TRUE)
var_oldf[3] <- var(test@f, na.rm=TRUE)
Loldf[[3]] <- test@f
LoldD[[3]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Three-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[4]     <- mean(test@BD, na.rm=TRUE)
var_newD[4] <- var(test@BD, na.rm=TRUE)
LnewD[[4]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[4]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[4] <- var(test@BDF, na.rm=TRUE)
LnewD2[[4]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[4] <- mean(test@D, na.rm=TRUE)
oldf[4] <- mean(test@f, na.rm=TRUE)
var_oldD[4] <- var(test@D, na.rm=TRUE)
var_oldf[4] <- var(test@f, na.rm=TRUE)
Loldf[[4]] <- test@f
LoldD[[4]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Four-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[5]     <- mean(test@BD, na.rm=TRUE)
var_newD[5] <- var(test@BD, na.rm=TRUE)
LnewD[[5]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[5]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[5] <- var(test@BDF, na.rm=TRUE)
LnewD2[[5]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[5] <- mean(test@D, na.rm=TRUE)
oldf[5] <- mean(test@f, na.rm=TRUE)
var_oldD[5] <- var(test@D, na.rm=TRUE)
var_oldf[5] <- var(test@f, na.rm=TRUE)
Loldf[[5]] <- test@f
LoldD[[5]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Five-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[6]     <- mean(test@BD, na.rm=TRUE)
var_newD[6] <- var(test@BD, na.rm=TRUE)
LnewD[[6]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[6]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[6] <- var(test@BDF, na.rm=TRUE)
LnewD2[[6]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[6] <- mean(test@D, na.rm=TRUE)
oldf[6] <- mean(test@f, na.rm=TRUE)
var_oldD[6] <- var(test@D, na.rm=TRUE)
var_oldf[6] <- var(test@f, na.rm=TRUE)
Loldf[[6]] <- test@f
LoldD[[6]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Six-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[7]     <- mean(test@BD, na.rm=TRUE)
var_newD[7] <- var(test@BD, na.rm=TRUE)
LnewD[[7]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[7]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[7] <- var(test@BDF, na.rm=TRUE)
LnewD2[[7]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[7] <- mean(test@D, na.rm=TRUE)
oldf[7] <- mean(test@f, na.rm=TRUE)
var_oldD[7] <- var(test@D, na.rm=TRUE)
var_oldf[7] <- var(test@f, na.rm=TRUE)
Loldf[[7]] <- test@f
LoldD[[7]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Seven-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[8]     <- mean(test@BD, na.rm=TRUE)
var_newD[8] <- var(test@BD, na.rm=TRUE)
LnewD[[8]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[8]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[8] <- var(test@BDF, na.rm=TRUE)
LnewD2[[8]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[8] <- mean(test@D, na.rm=TRUE)
oldf[8] <- mean(test@f, na.rm=TRUE)
var_oldD[8] <- var(test@D, na.rm=TRUE)
var_oldf[8] <- var(test@f, na.rm=TRUE)
Loldf[[8]] <- test@f
LoldD[[8]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Eight-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[9]     <- mean(test@BD, na.rm=TRUE)
var_newD[9] <- var(test@BD, na.rm=TRUE)
LnewD[[9]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[9]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[9] <- var(test@BDF, na.rm=TRUE)
LnewD2[[9]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[9] <- mean(test@D, na.rm=TRUE)
oldf[9] <- mean(test@f, na.rm=TRUE)
var_oldD[9] <- var(test@D, na.rm=TRUE)
var_oldf[9] <- var(test@f, na.rm=TRUE)
Loldf[[9]] <- test@f
LoldD[[9]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Nine-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[10]     <- mean(test@BD, na.rm=TRUE)
var_newD[10] <- var(test@BD, na.rm=TRUE)
LnewD[[10]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[10]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[10] <- var(test@BDF, na.rm=TRUE)
LnewD2[[10]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[10] <- mean(test@D, na.rm=TRUE)
oldf[10] <- mean(test@f, na.rm=TRUE)
var_oldD[10] <- var(test@D, na.rm=TRUE)
var_oldf[10] <- var(test@f, na.rm=TRUE)
Loldf[[10]] <- test@f
LoldD[[10]] <- test@D

# ---------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------
# Read data
test <- readData("Ten-Fasta", FAST=TRUE)
test <- set.populations(test, list(a,b,c))
test <- set.outgroup(test, d)

# Bd
test <- introgression.stats(test, do.BD=TRUE, do.CLR=FALSE)

newD[11]     <- mean(test@BD, na.rm=TRUE)
var_newD[11] <- var(test@BD, na.rm=TRUE)
LnewD[[11]]  <- test@BD

# Bd-fraction
test <- introgression.stats(test, do.BDF=TRUE, do.CLR=FALSE)

newD2[11]     <- mean(test@BDF, na.rm=TRUE)
var_newD2[11] <- var(test@BDF, na.rm=TRUE)
LnewD2[[11]]  <- test@BDF

# Patt-D
test <- introgression.stats(test, do.D=TRUE, do.CLR=FALSE)

oldD[11] <- mean(test@D, na.rm=TRUE)
oldf[11] <- mean(test@f, na.rm=TRUE)
var_oldD[11] <- var(test@D, na.rm=TRUE)
var_oldf[11] <- var(test@f, na.rm=TRUE)
Loldf[[11]] <- test@f
LoldD[[11]] <- test@D

# ---------------------------------------------------------------------------------------------

