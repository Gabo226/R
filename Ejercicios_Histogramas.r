load("skew.RData")

install.packages("skew.RData")
download.file("skew")

dim(dat)

par(mfrow = c(3,3))

for (i in 1:9) {
  quantile(x,ps)
}

par(mfrow=c(1,1))


for (i in 1:9) {
  qqnorm(dat[,i])
  qqline(dat[,i])
}

hist(dat[,4])

hist(dat[,9])
