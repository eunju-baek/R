#example data frame

> df <- data.frame(score1 = c(1:20),score2=c(2.5,2.49,2.51,2.59,2.56,2.61,2.86,2.7,2.69,2.76,1.44,1.44,1.43,1.4,1.49,1.56,1.78,1.62,1.59,1.68),
+ category = c(rep("A",10),rep("B",10)))

> df
   score1 score2 category
1       1   2.50        A
2       2   2.49        A
3       3   2.51        A
4       4   2.59        A
5       5   2.56        A
6       6   2.61        A
7       7   2.86        A
8       8   2.70        A
9       9   2.69        A
10     10   2.76        A
11     11   1.44        B
12     12   1.44        B
13     13   1.43        B
14     14   1.40        B
15     15   1.49        B
16     16   1.56        B
17     17   1.78        B
18     18   1.62        B
19     19   1.59        B
20     20   1.68        B

> mat <- matrix(nrow=2,ncol=4)
> mat
     [,1] [,2] [,3] [,4]
[1,]   NA   NA   NA   NA
[2,]   NA   NA   NA   NA


#Be careful about variable names (especially word spacing)

> for(j in 1:4){for(i in 1:2){mat[i,j]<- summary(lm(df[,i] ~ category,data=df))$coef["categoryB",j]}}



# Define row and column names

> rownames(mat) <- names(df)[1:2]
> mat
         [,1]       [,2]       [,3]         [,4]
score1 10.000 1.35400640   7.385489 7.503138e-07
score2 -1.084 0.05543966 -19.552791 1.422712e-13
> colnames(mat) <- c("Beta","SE","t","P")

> mat
         Beta         SE          t            P
score1 10.000 1.35400640   7.385489 7.503138e-07
score2 -1.084 0.05543966 -19.552791 1.422712e-13
