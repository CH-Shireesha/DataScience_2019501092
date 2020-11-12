test <- read.csv("sonar_test.csv", header=FALSE)
train <- read.csv("sonar_train.csv", header=FALSE)

y <- as.factor(train[,61])
x <- train[,1:60]
y_test <- as.factor(test[,61])
x_test <- test[,1:60]


library(randomForest)
fit<-randomForest(x,y)
misscal_err_rate = 1-sum(y==predict(fit,x))/length(y)
misscal_err_rate