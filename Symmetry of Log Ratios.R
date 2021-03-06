time = sort(nym.2002$time)
#Obtiene la media de el tiempo m�s r�pido
min(time) / median(time)

#Obtiene la medio del tiempo m�s corto
max(time) / median(time)

#Gr�fica 1
plot(time/median(time), ylim=c(1/4,4))
abline(h=c(1/2,1,2))

#Gr�fica 2
plot(log2(time/median(time)),ylim=c(-2,2))
abline(h=-1:1)
