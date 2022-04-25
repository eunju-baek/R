> df <- data.frame(score=c(2.5,2.49,2.51,2.59,2.56,2.61,2.86,2.7,2.69,2.76,1.44,1.44,1.43,1.4,1.49,1.56,1.78,1.62,1.59,1.68),
+                  test_type = c(rep("A",10),rep("B",10)))

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

> for(i in 1:2){
+ if(var.test(df[,i] ~ df[,3])$p.value<0.05){
+ print(names(df)[i])
+ print(t.test(df[,i]~df[,3],var.equal=F)$p.value)}
+ else{
+ print(names(df)[i])
+ print(t.test(df[,i]~df[,3],var.equal=T)$p.value)}
+ }

