dat <- read.csv("mice_pheno.csv")
View(dat)

dat <- na.omit(read.csv("mice_pheno.csv"))

#Es la proporcion de 1 n�mero de desviaci�n promedio
pnorm(1)-pnorm(-1)

#Es la proporcion de 2 n�meros de desviaciones promedio
pnorm(2)-pnorm(-2)

#Es la proporcion de 3 n�meros de desviaciones promedio
pnorm(3)-pnorm(-3)

#Es la proporci�n de 1 desviaci�n promedio
y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
mean( abs(z) <=1 )

library(rafalib)
popsd(z)

#Es la proporci�n de n�meros  de 2 diferentes desviaciones

mean( abs(z) <=2)

#Es la proporci�n de n�meros  de 3 diferentes desviaciones
mean( abs(z) <=3)

#Se crea una gr�fica para la comparaci�n de los datos y el peso de la distribuci�n normal 
qqnorm(z)
abline(0,1)

#Se crean cuatro gr�ficas para la comparaci�n de las diferentes distribuciones que nos presentan
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

#Se crea un histograma y una gr�fica para un an�lisis m�s completo
y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(1)
avgs <- replicate(10000, mean( sample(y, 25)))
mypar(1,2)
hist(avgs)
qqnorm(avgs)
qqline(avgs)

#Promedio de la distribuci�n
mean(avgs)

#Desviaci�n est�ndar de la Distribuci�n
popsd(avgs)
