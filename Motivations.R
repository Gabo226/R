library(dplyr)
#Se lee el archivo csv#
dat <- read.csv("msleep_ggplot2.csv")
View(dat) #Se visualizan los datos

#Se filtra por herbi y se selecciona una fila 
control <- filter(dat,vore == "herbi")%>%
  select(sleep_total) %>% unlist

#Se filtra por herbi y se selecciona una fila
treatment <- filter(dat,vore=="carni")%>%
  select(sleep_total) %>% unlist

#Es el promedio de la variable 
mean(control)
#Es la diferencia del promedio entre las 2 variables 
#pero será negativa por el orden de las variables
mean(treatment) - mean(control)

#Solo se le asigna el valor de la diferencia 
#del promedio de las variables
obs <- mean(treatment) - mean(control)


