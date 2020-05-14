
population <- read.csv("femaleControlsPopulation.csv")
population <- unlist(population)

set.seed(1)
n <- 1000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,5)
  averages5[i] <- mean(X)
}
hist(averages5) ##take a look
mean( abs( averages5 - mean(x) ) > 1)

#--------------------#
set.seed(1)
n <- 10000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,5)
  averages5[i] <- mean(X)
}
hist(averages5) ##take a look
mean( abs( averages5 - mean(x) ) > 1)

#---------------------------------#
set.seed(1)
n <- 1000
averages50 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,50)
  averages50[i] <- mean(X)
}
hist(averages50) ##take a look
mean( abs( averages50 - mean(x) ) > 1)
