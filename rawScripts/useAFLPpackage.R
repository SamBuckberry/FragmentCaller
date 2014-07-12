# AFLP
setwd("~/Desktop/")
install.packages("AFLP_0.4.0-71.tar.gz", repos = NULL, type = "source")

library(AFLP)

dir <- "rawData/"

files <- list.files(path=dir, pattern=".fsa")

# look at the design example
data(TiliaDesign)

# set up design
Replicate <- files
Plate <- c(1,1,1)
Lane <- c(1, 2, 3)
Specimen <- c("913", "1577", "2007")
Group <- c("a", "a", "a")
Capilar <- c(1, 2, 3)


design <- data.frame(Replicate, Plate, Lane, Specimen, Group, Capilar)

aflp <- as.AFLP(design)

# load the data

ladder <- c(60,65,80,100,120,140,160,180,200,225,250,275,300,325,
            350,375,400,425,450,475,500)

dye <- "FAM"

dat <- read.fsa(path=dir, files=files, dye=dye, SizeStandard=ladder)

# Set-up as data frame for adding to AFLP class object

# Primer combinations
PC <- c("PC1", "PC1", "PC1")

fluroDat <- data.frame(PC = PC, Replicate = dat$Filename, 
                       Fluorescence = dat$Fluorescence, Marker = dat$Marker,
                       Normalised = NA, Score = NA)

# Add fluorescene data to aflp object
fluorescence(aflp) <- fluroDat

str(fluorescence(aflp))

# Normalise the data
fluroDatClean <- clean(aflp)
normDat <- normalise(aflp, output = "tex", device = "png")

# 
ouput <- normDat$data

a <- classify(ouput, output="none")


results <- fluorescence(a)





