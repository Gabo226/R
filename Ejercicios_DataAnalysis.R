head(InsectSprays)

boxplot(split(values, factor))

boxplot(values ~ factor)

median(count)

library(dplyr)
data(nym.2002, package="UsingR")

boxplot(split(nym.2002,package="UsingR"))
