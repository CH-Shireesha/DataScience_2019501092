data <- read.csv("sonar_test.csv", header=FALSE)

x <- data[,1:2]
plot(x,pch=19,xlab=expression(x[1]), ylab=expression(x[2]))
y <- data[,61]
points(x,col=2+2*y,pch=19)
misscl_err = 1-sum(knnfit==y)/length(y)
misscl_err