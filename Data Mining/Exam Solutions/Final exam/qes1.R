dat = read.csv("BSE_Sensex_Index.csv",header = FALSE)

#create an extra column of successive differences for each column of numeric values in this data file
dat$diffV2 <- c(0, diff(dat$V2))
dat$diffV3 <- c(0, diff(dat$V3))
dat$diffV4 <- c(0, diff(dat$V4))
dat$diffV5 <- c(0, diff(dat$V5))
dat$diffV6 <- c(0, diff(dat$V6))
dat$diffV7 <- c(0, diff(dat$V7))

#Extract two simple random samples with replacement of 1000 and 3000 observations (rows)

sample1 = sample(seq(1,length(dat$V2)),1000,replace = T)
sample2 = sample(seq(1,length(dat$V2)),3000,replace = T)

#For your samples, use the functions mean(), max(), var() and quantile(,.25) 

#Column - 8 (V2)
sampleV2_1 = dat[sample1,8]
mean(sampleV2_1)
max(sampleV2_1)
var(sampleV2_1)
quantile(sampleV2_1,.25)

sampleV2_2 = dat[sample2,8]
mean(sampleV2_2)
max(sampleV2_2)
var(sampleV2_2)
quantile(sampleV2_2,.25)

#Column - 9 (V3)
sampleV3_1 = dat[sample1,9]
mean(sampleV3_1)
max(sampleV3_1)
var(sampleV3_1)
quantile(sampleV3_1,.25)

sampleV3_2 = dat[sample2,9]
mean(sampleV3_2)
max(sampleV3_2)
var(sampleV3_2)
quantile(sampleV3_2,.25)


#Column - 10 (V4)
sampleV4_1 = dat[sample1,10]
mean(sampleV4_1)
max(sampleV4_1)
var(sampleV4_1)
quantile(sampleV4_1,.25)

sampleV4_2 = dat[sample2,10]
mean(sampleV4_2)
max(sampleV4_2)
var(sampleV4_2)
quantile(sampleV4_2,.25)


#Column - 11 (V5)
sampleV5_1 = dat[sample1,11]
mean(sampleV5_1)
max(sampleV5_1)
var(sampleV5_1)
quantile(sampleV5_1,.25)

sampleV5_2 = dat[sample2,11]
mean(sampleV5_2)
max(sampleV5_2)
var(sampleV5_2)
quantile(sampleV5_2,.25)

#Column - 12 (V6)
sampleV6_1 = dat[sample1,12]
mean(sampleV6_1)
max(sampleV6_1)
var(sampleV6_1)
quantile(sampleV6_1,.25)

sampleV6_2 = dat[sample2,12]
mean(sampleV6_2)
max(sampleV6_2)
var(sampleV6_2)
quantile(sampleV6_2,.25)


#Column - 13 (V7)
sampleV7_1 = dat[sample1,13]
mean(sampleV7_1)
max(sampleV7_1)
var(sampleV7_1)
quantile(sampleV7_1,.25)

sampleV7_2 = dat[sample2,13]
mean(sampleV7_2)
max(sampleV7_2)
var(sampleV7_2)
quantile(sampleV7_2,.25)

#Column 8
mean(dat$diffV2)
max(dat$diffV2)
var(dat$diffV2)
quantile(dat$diffV2,.25)
#how much they differ?
abs(mean(sampleV2_1)-mean(dat$diffV2))
abs(max(sampleV2_1)-max(dat$diffV2))
abs(var(sampleV2_1)-var(dat$diffV2))
abs(quantile(sampleV2_1,.25)-quantile(dat$diffV2,.25))

abs(mean(sampleV2_2)-mean(dat$diffV2))
abs(max(sampleV2_2)-max(dat$diffV2))
abs(var(sampleV2_2)-var(dat$diffV2))
abs(quantile(sampleV2_2,.25)-quantile(dat$diffV2,.25))


#Column 9
mean(dat$diffV3)
max(dat$diffV3)
var(dat$diffV3)
quantile(dat$diffV3,.25)
#how much they differ?
abs(mean(sampleV3_1)-mean(dat$diffV3))
abs(max(sampleV3_1)-max(dat$diffV3))
abs(var(sampleV3_1)-var(dat$diffV3))
abs(quantile(sampleV3_1,.25)-quantile(dat$diffV3,.25))


abs(mean(sampleV3_2)-mean(dat$diffV3))
abs(max(sampleV3_2)-max(dat$diffV3))
abs(var(sampleV3_2)-var(dat$diffV3))
abs(quantile(sampleV3_2,.25)-quantile(dat$diffV3,.25))


#Column 10
mean(dat$diffV4)
max(dat$diffV4)
var(dat$diffV4)
quantile(dat$diffV4,.25)
#how much they differ?
abs(mean(sampleV4_1)-mean(dat$diffV4))
abs(max(sampleV4_1)-max(dat$diffV4))
abs(var(sampleV4_1)-var(dat$diffV4))
abs(quantile(sampleV4_1,.25)-quantile(dat$diffV4,.25))


abs(mean(sampleV4_2)-mean(dat$diffV4))
abs(max(sampleV4_2)-max(dat$diffV4))
abs(var(sampleV4_2)-var(dat$diffV4))
abs(quantile(sampleV4_2,.25)-quantile(dat$diffV4,.25))


#Column 11
mean(dat$diffV5)
max(dat$diffV5)
var(dat$diffV5)
quantile(dat$diffV5,.25)
#how much they differ?
abs(mean(sampleV5_1)-mean(dat$diffV5))
abs(max(sampleV5_1)-max(dat$diffV5))
abs(var(sampleV5_1)-var(dat$diffV5))
abs(quantile(sampleV5_1,.25)-quantile(dat$diffV5,.25))


abs(mean(sampleV5_2)-mean(dat$diffV5))
abs(max(sampleV5_2)-max(dat$diffV5))
abs(var(sampleV5_2)-var(dat$diffV5))
abs(quantile(sampleV5_2,.25)-quantile(dat$diffV5,.25))


#Column 12
mean(dat$diffV6)
max(dat$diffV6)
var(dat$diffV6)
quantile(dat$diffV6,.25)
#how much they differ?
abs(mean(sampleV6_1)-mean(dat$diffV6))
abs(max(sampleV6_1)-max(dat$diffV6))
abs(var(sampleV6_1)-var(dat$diffV6))
abs(quantile(sampleV6_1,.25)-quantile(dat$diffV6,.25))


abs(mean(sampleV6_2)-mean(dat$diffV6))
abs(max(sampleV6_2)-max(dat$diffV6))
abs(var(sampleV6_2)-var(dat$diffV6))
abs(quantile(sampleV6_2,.25)-quantile(dat$diffV6,.25))

#Column 13
mean(dat$diffV7)
max(dat$diffV7)
var(dat$diffV7)
quantile(dat$diffV7,.25)
#how much they differ?
abs(mean(sampleV7_1)-mean(dat$diffV7))
abs(max(sampleV7_1)-max(dat$diffV7))
abs(var(sampleV7_1)-var(dat$diffV7))
abs(quantile(sampleV7_1,.25)-quantile(dat$diffV7,.25))


abs(mean(sampleV7_2)-mean(dat$diffV7))
abs(max(sampleV7_2)-max(dat$diffV7))
abs(var(sampleV7_2)-var(dat$diffV7))
abs(quantile(sampleV7_2,.25)-quantile(dat$diffV7,.25))


#boxplot
boxplot(dat$diffV2,
        dat$diffV3,
        dat$diffV4,
        dat$diffV5,
        dat$diffV6,
        dat$diffV7
        ,col = 'blue', main = 'Boxplot', names=c("Open","High", "Low", "Close", "volume", "adj"))


#frequency histogram for Close values
dat$c = as.numeric(dat$V4)

hist(dat$c,breaks=seq(0,20000,by=2000),col='blue',xlab = "Close",ylab = "Frequency",main = "Histogram Plot")
