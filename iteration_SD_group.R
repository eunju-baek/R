library(data.table)
library(dplyr)
library(olsrr)


fi <- list.files()
for(i in 1:length(fi)){
assign(paste0("a",i),
fread(fi[i]))
}


> for(i in 1:100){
+ assign(paste0("set025_",i),
+ a1[sample(10000,replace=TRUE),])
+ assign(paste0("set050_",i),
+ a2[sample(10000,replace=TRUE),])
+ assign(paste0("set075_",i),
+ a3[sample(10000,replace=TRUE),])
+ assign(paste0("set100_",i),
+ a4[sample(10000,replace=TRUE),])
+ assign(paste0("set125_",i),
+ a5[sample(10000,replace=TRUE),])
+ assign(paste0("set150_",i),
+ a6[sample(10000,replace=TRUE),])
+ assign(paste0("set175_",i),
+ a7[sample(10000,replace=TRUE),])
+ assign(paste0("set200_",i),
+ a8[sample(10000,replace=TRUE),])
+ }


li025 <- list()


> for(i in 1:100){
+ assign(paste0("mod025_",i) ,
+ lm(bmi ~ V48 + age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array,data= get(paste0("set025_",i))))
+ assign(paste0("mod050_",i) ,
+ lm(bmi ~ V48 + age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array,data= get(paste0("set050_",i))))
+ assign(paste0("mod075_",i) ,
+ lm(bmi ~ V48 + age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array,data= get(paste0("set075_",i))))
+ assign(paste0("mod100_",i) ,
+ lm(bmi ~ V48 + age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array,data= get(paste0("set100_",i))))
+ assign(paste0("mod125_",i) ,
+ lm(bmi ~ V48 + age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array,data= get(paste0("set125_",i))))
+ assign(paste0("mod150_",i) ,
+ lm(bmi ~ V48 + age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array,data= get(paste0("set150_",i))))
+ assign(paste0("mod175_",i) ,
+ lm(bmi ~ V48 + age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array,data= get(paste0("set175_",i))))
+ assign(paste0("mod200_",i) ,
+ lm(bmi ~ V48 + age+sex+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10+array,data= get(paste0("set200_",i))))
+ }


> for(i in 1:100){
+ bp075[[i]] <- get(paste0("bp075_",i))$bp
+ bp100[[i]] <- get(paste0("bp100_",i))$bp
+ bp125[[i]] <- get(paste0("bp125_",i))$bp
+ bp150[[i]] <- get(paste0("bp150_",i))$bp
+ bp175[[i]] <- get(paste0("bp175_",i))$bp
+ bp200[[i]] <- get(paste0("bp200_",i))$bp
+ }


> for(i in 1:100){
+ assign(paste0("bp025_",i),get(paste0("mod025_",i)) %>% ols_test_breusch_pagan())
+ assign(paste0("bp050_",i),get(paste0("mod050_",i)) %>% ols_test_breusch_pagan())
+ assign(paste0("bp075_",i),get(paste0("mod075_",i)) %>% ols_test_breusch_pagan())
+ assign(paste0("bp100_",i),get(paste0("mod100_",i)) %>% ols_test_breusch_pagan())
+ assign(paste0("bp125_",i),get(paste0("mod125_",i)) %>% ols_test_breusch_pagan())
+ assign(paste0("bp150_",i),get(paste0("mod150_",i)) %>% ols_test_breusch_pagan())
+ assign(paste0("bp175_",i),get(paste0("mod175_",i)) %>% ols_test_breusch_pagan())
+ assign(paste0("bp200_",i),get(paste0("mod200_",i)) %>% ols_test_breusch_pagan())
+ }


> for(i in 1:100){
+ assign(paste0("score025_",i),get(paste0("mod025_",i)) %>% ols_test_score())
+ assign(paste0("score050_",i),get(paste0("mod050_",i)) %>% ols_test_score())
+ assign(paste0("score075_",i),get(paste0("mod075_",i)) %>% ols_test_score())
+ assign(paste0("score100_",i),get(paste0("mod100_",i)) %>% ols_test_score())
+ assign(paste0("score125_",i),get(paste0("mod125_",i)) %>% ols_test_score())
+ assign(paste0("score150_",i),get(paste0("mod150_",i)) %>% ols_test_score())
+ assign(paste0("score175_",i),get(paste0("mod175_",i)) %>% ols_test_score())
+ assign(paste0("score200_",i),get(paste0("mod200_",i)) %>% ols_test_score())
+ }


> for(i in 1:100){
+ score025[[i]] <- get(paste0("score025_",i))$score
+ score050[[i]] <- get(paste0("score050_",i))$score
+ score075[[i]] <- get(paste0("score075_",i))$score
+ score100[[i]] <- get(paste0("score100_",i))$score
+ score125[[i]] <- get(paste0("score125_",i))$score
+ score150[[i]] <- get(paste0("score150_",i))$score
+ score175[[i]] <- get(paste0("score175_",i))$score
+ score200[[i]] <- get(paste0("score200_",i))$score
+ }


> for(i in 1:100){
+ R2_025[[i]] <- summary(get(paste0("mod025_",i)))$adj.r.squared
+ R2_050[[i]] <- summary(get(paste0("mod050_",i)))$adj.r.squared
+ R2_075[[i]] <- summary(get(paste0("mod075_",i)))$adj.r.squared
+ R2_100[[i]] <- summary(get(paste0("mod100_",i)))$adj.r.squared
+ R2_125[[i]] <- summary(get(paste0("mod125_",i)))$adj.r.squared
+ R2_150[[i]] <- summary(get(paste0("mod150_",i)))$adj.r.squared
+ R2_175[[i]] <- summary(get(paste0("mod175_",i)))$adj.r.squared
+ R2_200[[i]] <- summary(get(paste0("mod200_",i)))$adj.r.squared
+ }


> dbp025 <- data.frame(dbp025)
> dbp050 <- data.frame(dbp050)
> dbp075 <- data.frame(dbp075)
> dbp100 <- data.frame(dbp100)
> dbp125 <- data.frame(dbp125)
> dbp150 <- data.frame(dbp150)
> dbp175 <- data.frame(dbp175)
> dbp200 <- data.frame(dbp200)

> dbp025$sdg <- "0.25"
> dbp050$sdg <- "0.50"
> dbp075$sdg <- "0.75"
> dbp100$sdg <- "1"
> dbp125$sdg <- "1.25"
> dbp150$sdg <- "1.50"
> dbp175$sdg <- "1.75"
> dbp200$sdg <- "2"


6 0.57588190 0.25
> dbp050 <- data.frame(dbp050)
> dbp075 <- data.frame(dbp075)
> dbp100 <- data.frame(dbp100)
> dbp125 <- data.frame(dbp125)
> dbp150 <- data.frame(dbp150)
> dbp175 <- data.frame(dbp175)
> dbp200 <- data.frame(dbp200)
> dbp050$sdg <- "0.50"
> dbp075$sdg <- "0.75"
> dbp100$sdg <- "1"
> dbp125$sdg <- "1.25"
> dbp150$sdg <- "1.50"
> dbp175$sdg <- "1.75"
> dbp200$sdg <- "2"> names(dbp025)[1] <- "bp"
> names(dbp050)[1] <- "bp"
> names(dbp075)[1] <- "bp"
> names(dbp100)[1] <- "bp"
> names(dbp125)[1] <- "bp"
> names(dbp150)[1] <- "bp"
> names(dbp175)[1] <- "bp"
> names(dbp200)[1] <- "bp"
> totbp <- rbind(dbp025,dbp050,dbp075,dbp100,dbp125,dbp150,dbp175,dbp200)


> dsc025 <- data.frame(score025)
> dsc050 <- data.frame(score050)
> dsc075 <- data.frame(score075)
> dsc100 <- data.frame(score100)
> dsc125 <- data.frame(score125)
> dsc150 <- data.frame(score150)
> dsc175 <- data.frame(score175)
> dsc200 <- data.frame(score200)
> names(dsc025)[1] <- "score"
> names(dsc050)[1] <- "score"
> names(dsc075)[1] <- "score"
> names(dsc100)[1] <- "score"
> names(dsc125)[1] <- "score"
> names(dsc150)[1] <- "score"
> names(dsc175)[1] <- "score"
> names(dsc200)[1] <- "score"


> ggplot(totbp,aes(x=as.numeric(sdg),y=bp))+  geom_jitter()+ geom_smooth()
>  ggplot(totsc,aes(x=as.numeric(sdg),y=score))+  geom_jitter()+ geom_smooth()
