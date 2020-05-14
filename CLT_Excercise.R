library(dplyr)

dat <- read.csv("mice_pheno.csv")

control <- filter(dat,Diet == "chow")%>%
  select(Bodyweight)%>% unlist

treatment <- filter(dat,Diet == "hf")%>%
  select(Bodyweight)%>% unlist

#Te muestra el intervalo de confiabilidad
#Muestras estimadas de x e y
#y la hipotesis alternativa
ttest <- t.test(treatment,control)
ttest

qqnorm(control)
qqline(control)

qqnorm(treatment)
qqline(treatment)

#Análisis de una distribución T
set.seed(1)
n <- 100
sides <- 6
p <- 1/sides
zs <- replicate(10000,{
  x <- sample(1:sides,n,replace=TRUE)
  (mean(x==6) - p) / sqrt(p*(1-p)/n)
}) 
qqnorm(zs)
abline(0,1)#confirm it's well approximated with normal distribution
mean(abs(zs) > 2)

#Obtiene el promedio de la variable aleatoria
X <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
Y <- filter(dat, Diet=="hf") %>% select(Bodyweight) %>% unlist

mean(X)

#Obtiene el estimado sesgado de X
library(rafalib)
sd(X)

#Calcula una probabilidad de 2
2 * ( 1-pnorm(2/sd(X) * sqrt(12) ) )

#Calcula el estimado
sqrt( sd(X)^2/12 + sd(Y)^2/12 )
##or 
sqrt( var(X)/12 + var(Y)/12)

#Obtiene el error del estadístico T
( mean(Y) - mean(X) ) / sqrt( var(X)/12 + var(Y)/12)
##or 
t.test(Y,X)$stat

#Distribuciones CLT
1 - pt(3,df=3)
1 - pt(3,df=15)
1 - pt(3,df=30)
1 - pnorm(3)

#Obtiene una distribución nula
Z <- ( mean(Y) - mean(X) ) / sqrt( var(X)/12 + var(Y)/12)
2*( 1-pnorm(Z)) 

#Obtiene la aproximación de una distribución T
t.test(X,Y)$p.value

