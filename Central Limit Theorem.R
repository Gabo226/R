dat <- read.csv("mice_pheno.csv")
View(dat)

dat <- na.omit(read.csv("mice_pheno.csv"))

#Es la proporcion de 1 número de desviación promedio
pnorm(1)-pnorm(-1)

#Es la proporcion de 2 números de desviaciones promedio
pnorm(2)-pnorm(-2)

#Es la proporcion de 3 números de desviaciones promedio
pnorm(3)-pnorm(-3)

#Es la proporción de 1 desviación promedio
y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
mean( abs(z) <=1 )

library(rafalib)
popsd(z)

#Es la proporción de números  de 2 diferentes desviaciones

mean( abs(z) <=2)

#Es la proporción de números  de 3 diferentes desviaciones
mean( abs(z) <=3)

#Se crea una gráfica para la comparación de los datos y el peso de la distribución normal 
qqnorm(z)
abline(0,1)

#Se crean cuatro gráficas para la comparación de las diferentes distribuciones que nos presentan
mypar(2,2)
y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
qqnorm(z);abline(0,1)
y <- filter(dat, Sex=="F" & Diet=="chow") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
qqnorm(z);abline(0,1)
y <- filter(dat, Sex=="M" & Diet=="hf") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
qqnorm(z);abline(0,1)
y <- filter(dat, Sex=="F" & Diet=="hf") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
qqnorm(z);abline(0,1)

#Se crea un histograma y una gráfica para un análisis más completo
y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(1)
avgs <- replicate(10000, mean( sample(y, 25)))
mypar(1,2)
hist(avgs)
qqnorm(avgs)
qqline(avgs)

#Promedio de la distribución
mean(avgs)

#Desviación estándar de la Distribución
popsd(avgs)
