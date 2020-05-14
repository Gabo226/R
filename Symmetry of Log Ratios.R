time = sort(nym.2002$time)
#Obtiene la media de el tiempo más rápido
min(time) / median(time)

#Obtiene la medio del tiempo más corto
max(time) / median(time)

#Gráfica 1
plot(time/median(time), ylim=c(1/4,4))
abline(h=c(1/2,1,2))

#Gráfica 2
plot(log2(time/median(time)),ylim=c(-2,2))
abline(h=-1:1)
