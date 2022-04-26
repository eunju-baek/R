library(fastDummies)
library(data.table)


#root data frame >> a

a <- fread("a")

a <- dummy_cols(.data=a,select_columns= c("X1329.0.0",  "X1339.0.0",  "X1349.0.0",  "X1359.0.0",  "X1369.0.0","X1379.0.0" , "X1389.0.0" , "X1408.0.0" , "X1478.0.0" , "X1558.0.0"),remove_first_dummy=FALSE)

#combining for dummy columns
