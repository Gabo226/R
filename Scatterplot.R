
data("father.son")
x=father.son$fheight
y = father.son$sheight
plot(x,y,xlab = "Father's height in inches", ylab = "Son's height in inhces", main = paste("correlation =",signif(cor(x,y),2)))


boxplot(split(y,round(x)))
print(mean(y[round(x == 72)]))

x=(x-mean(x))/sd(x)
y=(y-mean(y))/sd(y)
means = tapply(y,round(x*5) /4,means)
fatherheights = as.numeric(names(means))
plot(fatherheights,means,ylab = "average of estrata of son heights",ylim = range(fatherheights))
abline(0,cor(x,y))

#Te muestra una gráfica de dispersión con correlación 0.88
set.seed(1)
a = rnorm(100); a[1]=25
b = rnorm(100); b[1]=26
plot(a,b,main = paste("correlation = ",signif(cor(a,b),2)))
