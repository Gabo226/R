population <- read.csv("femaleControlsPopulation.csv")
population <- unlist(population)

mean(population)

#Diferencia entre la muestra y el promedio
set.seed(1)
X <- sample(x,5)
abs( mean(X) - mean(x) )

#Diferencia entre la muestra y el promedio
set.seed(5)
X <- sample(x,5)
abs( mean(X) - mean(x) )
