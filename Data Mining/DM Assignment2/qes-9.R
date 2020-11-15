data<-read.csv("OH_house_prices.csv", header=FALSE)

median(data[,1])
mean(data[,1])

median(data[,1]+10)

median(2*data[,1])