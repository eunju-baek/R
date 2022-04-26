# stepwise regression for variable selection

library(data.table)

a <- fread("pheno.txt")

model <- lm(y ~ x + variables,data=a)


# select option forward, backward, or both
step(model,direction='backward')
