data(nym.2002, package="UsingR")

#Obtine la correlación de la variable males
library(dplyr)
males <- filter(nym.2002, gender=="Male") 
females <- filter(nym.2002, gender=="Female")
cor(males$age,males$time)

#Obtine la correlación de la variable males
cor(females$age,females$time)

