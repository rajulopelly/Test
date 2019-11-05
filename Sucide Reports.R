master <- read.csv("C:/Users/raju/Downloads/suicide-rates-overview-1985-to-2016/master.csv", header=FALSE)
View(master)
dim(master)
names(master)
library(dplyr)
table(master$age)
str(master)
master$age<-factor(master$age,levels=c("5-14 years","15-24 years","25-34 years","35-54 years","55-74 years","75+ years"),labels=c(1,2,3,4,5,6))
sum(is.na(master$`HDI for year`))

master$`HDI for year`[is.na(master$`HDI for year`)] <- mean(master$`HDI for year`, na.rm=TRUE)
sum(is.na(master))
prop.table(table(master$generation))*100
table(master$sex)
master$sex<-factor(master$sex,levels=c("female","male"),labels = c(0,1))
#we already have a country and year, no need of "country.year" variable.
master$country.year<-NULL
library(psych)
describe(master)
summary(master)
str(master)
table(master$generation)
master$generation<-factor(master$generation,levels = c("Boomers G.I.","Generation","Generation X","Generation Z","Millenials","Silent"),labels = c(1,2,3,4,5,6))
