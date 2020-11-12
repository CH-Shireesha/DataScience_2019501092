test <- read.csv("sonar_test.csv", header=FALSE)
train <- read.csv("sonar_train.csv", header=FALSE)

y<-as.factor(train[,61])
x<-train[,1:60]
y_test<-as.factor(test[,61])
x_test<-test[,1:60]

library(class)
fit_train<-knn(x,x,y,k=5)
train_err = 1-sum(y==fit_train)/length(y)
train_err

fit_test<-knn(x,x_test,y,k=5)
test_err = 1-sum(y_test==fit_test)/length(y_test)
test_err

fit_train<-knn(x,x,y,k=6)
train_err = 1-sum(y==fit_train)/length(y)
train_err

fit_test<-knn(x,x_test,y,k=6)
test_err = 1-sum(y_test==fit_test)/length(y_test)
test_err