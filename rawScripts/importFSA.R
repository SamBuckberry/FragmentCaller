install.packages("seqinr")
library(seqinr)

source("http://bioconductor.org/biocLite.R")
biocLite("sangerseqR")
library(sangerseqR)

# Read in .fsa file
dat <- read.abif(filename="rawData/A01_913_HpaII_CA_AAG.fsa")
dat1 <- sangerseq(dat)

str(dat)
head(dat)
names(dat)

dat <- seqinr::read.abif(filename="rawData/A01_913_HpaII_CA_AAG.fsa")
sangerseq(obj=dat)

dat <- readsangerseq(system.file("rawData/A01_913_HpaII_CA_AAG.fsa", package="sangerseqR"))


# Extract the data for the FAM lables (data$DyeN.1)

# Extract the data for the ladder

# Generate a plot of the data

