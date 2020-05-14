install.packages("dplyr")

library(dplyr)

dat <- read.csv("famaleMiceWeights.csv")
View(dat)

controls <- filter(dat, Diet.Bodyweight == "chow	24.04")
View(controls)

controls <- select(controls,Diet.Bodyweight)
unlist(controls)

controls <- filter(dat,Diet.Bodyweight == "chow	24.04")%>% 
  select(Diet.Bodyweight) %>% unlist
mean(controls)

controls

View(controls)

mean(controls)