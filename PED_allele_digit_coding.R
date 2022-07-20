#!/usr/bin/env Rscript

argv <- commandArgs(trainingOnly = TRUE)
pheno = argv[1]
ped = argv[2]
name = argv[3]

pheno <- read.table(pheno,header=T)
ped <- read.table(ped,header=F)

library(dplyr)

ped <- ped %>% mutate(rs1 = ifelse(V7=="C",ifelse(V8=="C",2,1),ifelse(V8=="C",1,0)))
ped <- ped %>% mutate(rs1 =  = ifelse(V7=="C",ifelse(V8=="C",2,1),ifelse(V8=="C",1,0)))
ped <- ped %>% mutate(hap = ifelse(rs1==0,ifelse(rs2==2,"e2e2",ifelse(rs2==1,"e2e3","e3e3")),ifelse(rs1==1,"e3e4","e4e4")))

ped <- ped[,c(1,9)]

names(ped)[1] <- "FID"
pheno  <- left_join(pehno,ped,by="FID")

write.table(pheno,paste(name,"test.txt"),quote=F,sep="\t",row.names=F,na="NA")
