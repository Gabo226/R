install.packages("UsingR")
library(UsingR)
x = father.son$fheight

round(sample(x,20),1)

hist(x,breaks = seq(floor(min(x)),ceiling(max(x))),
     main = "Height histogram", xlab = "Height in inches")

xs <- seq(floor(min(x)),ceiling(max(x)),0.1)

plot(xs,ecdf(x)(xs),type = "l",
     xlab = "Height in inches", ylab = "F(x)")


mean(xs)

sum(age>=35 & age<45)

##-----DISTRIBUCIÓN NORMAL-----------------##
mean(x<69)

sd(x)

pnorm(70,mean(x),sd(x))

ps <- seq(0.01,0.99,0.01)
qs <- quantile(x,ps)
normalqs <- qnorm(ps,mean(x),sd(x))
#GRÁFICA DE DISPERSIÓN
plot(normalqs,qs,xlab = "Normal percentiles",ylab = "Height percentiles")
abline(0,1) #indentity line

#-----------------------------------------
qqnorm(x)
qqline(x)

#-----------------------------------------
hist(exec.pay)
qqnorm(exec.pay)
qqline(exec.pay)

##----------------------------------------
boxplot(exec.pay,ylab = "10,000s of dollars",ylim = c(0,400))

##----------------------------------------
