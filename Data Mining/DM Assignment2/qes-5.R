data <- read.csv("twomillion.csv",header=FALSE)

sample_data <- sample(data[,1],10000,replace=TRUE)
head(sample_data)

mean(sample_data)
max(sample_data)
var(sample_data)
quantile(sample_data, .25)

mean(data$V1)
max(data$V1)
var(data$V1)
quantile(data$V1)

write.csv(sample_data, file = "sample_data.csv")

str(data)