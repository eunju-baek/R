# Create an empty matrix for saving summary statistics. ncol = numer of variables; nrow = number of statistics

mat <- matrix(ncol=4,nrow=21)

> mat
##      [,1] [,2] [,3] [,4]
## [1,]   NA   NA   NA   NA
## [2,]   NA   NA   NA   NA
## [3,]   NA   NA   NA   NA
## [4,]   NA   NA   NA   NA
## [5,]   NA   NA   NA   NA
## [6,]   NA   NA   NA   NA
## [7,]   NA   NA   NA   NA
## [8,]   NA   NA   NA   NA
## [9,]   NA   NA   NA   NA
## [10,]   NA   NA   NA   NA
## [11,]   NA   NA   NA   NA
## [12,]   NA   NA   NA   NA
## [13,]   NA   NA   NA   NA
## [14,]   NA   NA   NA   NA
## [15,]   NA   NA   NA   NA
## [16,]   NA   NA   NA   NA
## [17,]   NA   NA   NA   NA
## [18,]   NA   NA   NA   NA
## [19,]   NA   NA   NA   NA
## [20,]   NA   NA   NA   NA
## [21,]   NA   NA   NA   NA


mod <- paste(names(b)[4:16],collapse="+") %>% paste("bmi ~ b[,i]+",.) %>% as.formula()

#Be careful about variable names (especially word spacing)

> for(j in 1:4){for(i in 18:38){mat[(i-17),j]<- summary(lm(mod,data=b))$coef["b[, i]",j]}}

> rownames(mat) <- names(b)[18:38]
> colnames(mat) <- c("Beta","SE","t","P")
