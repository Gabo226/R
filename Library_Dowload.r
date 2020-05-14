library(downloader) 

url <- "https://github.com/genomicsclass/dagdata/blob/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)

length(download)

download[,12]

dat[12,20]

weights <- dat$Bodyweight
weights[11]

weights <- dat$Bodyweight
length(weights)
