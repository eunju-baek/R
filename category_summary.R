#This file for summarizing of categorical variables

li <- list()

library(data.table)
a <- fread("pheno.txt")


# For example, the columns of categorical variables are from 8 to 11 >> categorical column name:A and B

# summarise a total number of samples and percentage stratified by categorical variables

for(i in 8:11){
b <- a %>% group_by(A,B) ^>^ summarise(total = n())
b <- b %>% mutate(percent = round(total/sum(total),2))
  li[[i]] <- b }

list <- do.call("rbind",li)
