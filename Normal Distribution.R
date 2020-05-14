population <- read.csv("femaleControlsPopulation.csv")

set.seed(1)
n <- 1000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,5)
  averages5[i] <- mean(X)
}

# make averages50
set.seed(1)
n <- 1000
averages50 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,50)
  averages50[i] <- mean(X)
}

#Comparación de histogramas
library(rafalib) 
###mypar(1,2) is optional and is used to put both plots on one page
mypar(1,2)
hist(averages5, xlim=c(18,30))
hist(averages50, xlim=c(18,30))

#Conocer el último promdedio dado en la muestra
mean( averages50 < 25 & averages50 > 23)

#Se calcula la distribución normal de la diferencia de muestras
pnorm( (25-23.9) / 0.43)  - pnorm( (23-23.9) / 0.43) 
