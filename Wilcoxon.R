data(ChickWeight)

head(ChickWeight)
plot( ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Diet)

chick = reshape(ChickWeight, idvar=c("Chick","Diet"), timevar="Time",
                direction="wide")

head(chick)
chick = na.omit(chick)

#Valor de p con T-Test
x = chick$weight.4[chick$Diet == 1]
y = chick$weight.4[chick$Diet == 4]
t.test(c(x, 200), y)$p.value

#Valor de la destribución con Wilcoxon
x = chick$weight.4[chick$Diet == 1]
y = chick$weight.4[chick$Diet == 4]
wilcox.test(c(x, 200), y, exact=FALSE)$p.value

#Comparaciones
library(rafalib)
mypar(1,3)
boxplot(x,y)
boxplot(x,y+10)
boxplot(x,y+100)

t.test(x,y + 10)$statistic - t.test(x,y + 100)$statistic

#Comparación con Wilcoxon
wilcox.test(c(1,2,3),c(4,5,6))$p.value

#Comparación con Wilcoxon
wilcox.test(c(1,2,3),c(400,500,600))$p.value
