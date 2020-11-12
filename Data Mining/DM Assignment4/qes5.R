test <- read.csv("sonar_test.csv", header=FALSE)
train <- read.csv("sonar_train.csv", header=FALSE)

y<-as.factor(train[,61])
x<-train[,1:60]
y_test<-as.factor(test[,61])
x_test<-test[,1:60]

library(rpart)
fit<- rpart(y~.,x,control=rpart.control(minsplit=0,minbucket=0,cp=-1, maxcompete=0, maxsurrogate=0, usesurrogate=0, xval=0,maxdepth=5))

misclassification_err = 1-sum(y_test==predict(fit,x_test, type="class"))/length(y_test)
misclassification_err