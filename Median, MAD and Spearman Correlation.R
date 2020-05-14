data(ChickWeight)
head(ChickWeight)
plot( ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Diet)

chick = reshape(ChickWeight, idvar=c("Chick","Diet"), timevar="Time",
                direction="wide")

head(chick)
chick = na.omit(chick)

#Obtiene la media de comida para pollo de 3000 gramos
mean(c(chick$weight.4, 3000))/mean(chick$weight.4)

#Obtiene solo la media de los pollos
mean(c(chick$weight.4))/mean(chick$weight.4)

#Obtiene la desviación estándar de la comida para pollos 
sd(c(chick$weight.4, 3000))/sd(chick$weight.4)

#Obtiene la Desviación Absoluta Media
mad(c(chick$weight.4, 3000))/mad(chick$weight.4)

#Calcula la correlación de Pearson
cor(c(chick$weight.4, 3000), c(chick$weight.21,3000))/cor(chick$weight.4, chick$weight.21)

