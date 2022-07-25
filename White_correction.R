library(data.table)
library(dplyr)

a <- fread("input.txt")

m1 <- lm(bmi ~ V48+age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array+X884.0.0+(X884.0.0*V48),data=a)
h1 <- coeftest(m1,vcov = vcovHC(m1,type="HC3"))


#comarison two model

summary(m1)
h1[]


#optional loop


for(i in env){for(j in 1:4){assign(paste("ori",i,sep=''),lm(bmi ~ V48+age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array+b[,i]+(b[,i]*V48),data=b))}}
for(i in env){paste("ori",i,sep='') %>% get() %>% vcovHC(.,type="HC3") %>% assign(paste("wt",i,sep=''),.)}
