data <- read.csv("sonar_test.csv", header=FALSE)

x <- data[,1:60]
fit <- kmeans(x, 2)
library(class)
knnfit <- knn(fit$centers,x,as.factor(c(-1,1)))
misscls_err = 1-sum(knnfit==y)/length(y)
misscls_err