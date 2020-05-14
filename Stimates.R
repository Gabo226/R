d = read.csv("assoctest.csv")
table(d)

tab = table(d$allele, d$case)
chisq.test(tab)

tab = table(d$allele, d$case)
fisher.test(tab)
