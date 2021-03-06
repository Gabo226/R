#Se lee el archivo .csv
population <- read.csv("femaleControlsPopulation.csv")
#Se guardar� en una fila 
population <- unlist(population)

#Se guardar� como un tipo de muestra
control <- sample(population,12)
#Se guardar� como un tipo de muestra
treatment <- sample(population,12)
#Te da la diferencia de promedios de las muestras
mean(treatment) - mean(control)

#Se crean variables y se inicializan
n <- 10000 
nulls <- vector("numeric",n)
for (i in 1:n) {
  control <- sample(population,12)
  treatment <- sample(population,12)
  nulls[i] <- mean(treatment) - mean(control)
}
#Te saca el m�ximo valor del bucle
max(nulls)

#Te crea el Histograma
hist(nulls)

#La suma de la desigualdad dividida entre el valor de n
sum(nulls > obs) / n 

sum(nulls > obs)

mean(nulls > obs)

mean(abs(nulls) > obs)
