
# This script shows how to merge a file, create a boxplot, and 

#read in the proabilties file 
probabilities <- read.delim("~/Downloads/probabilities (1).txt")
View(probabilities)
#read in the clinical data
lung_clinical <- read.delim("~/Downloads/lung_clinical.txt")
#merge the file
mergedFile=merge(probabilities,lung_clinical, by.x=2, by.y=1)
#boxplot the two different cancer types
boxplot(mergedFile$Probability ~ mergedFile$cancerID)
#do a t-test
t.test(mergedFile$Probability ~ mergedFile$cancerID)
