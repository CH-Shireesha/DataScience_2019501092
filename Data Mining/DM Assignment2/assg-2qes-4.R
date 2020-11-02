data <- read.csv("myfirstdata.csv", header = F)

# Look at the first few rows
head(data)
c(is.factor(data[, 1]), is.numeric(data[, 1]))
c(is.factor(data[, 2]), is.numeric(data[, 2]))
plot(data[, 1])
plot(data[, 2])
c1 <- data[, 1]
c(mean(c1), max(c1), var(c1), quantile(c1, 0.25))