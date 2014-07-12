# import function specgram from signal package
#install.packages("signal")
library(signal)

# import function rollmax from package zoo
#install.packages(zoo)
library(zoo)

# import function read.abif from seqinr
library(seqinr)

# Source read.fsa functions from AFLP package
source("~/Desktop/Dropbox/PhD/R_Projects/FragmentCaller/rawScripts/importFSA.R")

dir <- "rawData/"

files <- list.files(path=dir, pattern=".fsa")

ladder <- c(60,65,80,100,120,140,160,180,200,225,250,275,300,325,
               350,375,400,425,450,475,500)

dye <- "FAM"

sizeRange <- 

# import fsa data using the read.fsa function from the AFLP package
dat <- read.fsa(path=dir, files=files, dye=dye, SizeStandard=ladder)

# Look at the line data
plot(dat$Marker, dat$Fluorescence, type="p", col=dat$Filename, xlim=c(200, 400), 
     ylim=c(0,6))



dat <- OPENAFLP(listfiles="rawData/A03_2007_HpaII_CA_AAG.fsa", format="GS")

