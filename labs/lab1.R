source("cdc.R")
names(cdc)

cdc$genhlth
cdc$weight
cdc$smoke100

sum(1*(cdc$gender=='m'))
sum(1*(cdc$genhlth=='excellent'))/20000

smoke=table(cdc$smoke100)
table(cdc$smoke100)/20000
barplot(smoke)

gender_smokers = table(cdc$gender,cdc$smoke100)
mosaicplot(gender_smokers)

sum(cdc$smoke100*(cdc$age<23))

mdata <- subset(cdc, cdc$gender=='m')

cdc$bmi <- cdc$weight/(cdc$height^2) * 703
boxplot(cdc$bmi~cdc$genhlth)

plot(cdc$weight, cdc$bmi)
