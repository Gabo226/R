population <- read.csv("mice_pheno.csv")
View(population)

dat <- na.omit(dat)

#Te da el promedio de los datos que encuentra
library(dplyr)
x <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
mean(x)

#Te da la desviación estándar de la población x
library(rafalib)
popsd(x)

#Te da el promedio de la muestra de tamaño 25 de x
set.seed(1)
X <- sample(x,25)
mean(X)

#Te da el promedio de los datos que encuentra
library(dplyr)
y <- filter(dat, Sex=="M" & Diet=="hf") %>% 
  select(Bodyweight) %>% unlist
mean(y)

#Te da la Desviación estándar de la población y
library(rafalib)
popsd(y)

#Te da el promedio de la muestra de tamaño 25 de y
set.seed(1)
X <- sample(y,25)
mean(y)

#Diferencia del valor absoluto de las medias
abs( ( mean(y) - mean(x) ) - ( mean(Y) - mean(X) ) )

#Valores de medias y se calcula su diferencia
x <- filter(dat, Sex=="F" & Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(2)
X <- sample(x,25)
y <- filter(dat, Sex=="F" & Diet=="hf") %>% select(Bodyweight) %>% unlist
set.seed(2)
Y <- sample(y,25)
abs( ( mean(y) - mean(x) ) - ( mean(Y) - mean(X) ) )
