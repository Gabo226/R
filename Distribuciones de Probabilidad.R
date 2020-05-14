install.packages("gapminder")
library(gapminder)
data("gapminder")

dat1952 = gapminder[ gapminder$year == 1952, ]
x = dat1952$lifeExp
mean(x <= 40)

dat1952 = gapminder[ gapminder$year == 1952, ]
x = dat1952$lifeExp
mean(x <= 60) - mean(x <= 40)


prop = function(q) {
  mean(x <= q)
}

qs = seq(from=min(x), to=max(x), length=20)

props = sapply(qs, prop)

plot(qs, props)

props = sapply(qs, function(q) mean(x <= q))

plot(ecdf(x))
     