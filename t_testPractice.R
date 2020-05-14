library(dplyr)

dat <- read.csv("mice_pheno.csv")

control <- filter(dat,Diet == "hf")%>%
  select(Bodyweight)%>% unlist

treatment <- filter(dat,Diet == "hf")%>%
  select(Bodyweight)%>% unlist

N <- length(treatment)
obs <- mean(treatment) - mean(control)

n <- 10000
for (i in 1:n) {
  control <- sample(dat,N)
  treatment <- sample(dat,N)
}

se<- sqrt(
  var(treatment)/3+
    var(control)/3)
nulls[i] <- (mean(treatment) - mean(control)) /se
tstat <- obs/se

1 - pnorm(tstat)

2* (1 - pnorm(tstat))

library(rafalib)
mypar()

qqnorm(nulls)
abline(0,1)
