data <- read.csv("spring2008exams.csv")

model <- lm(data[,3]~data[,2])
plot(data[,2],data[,3],pch=19,xlab="first midterm",ylab="second midterm",xlim=c(100,200),ylim=c(100,200))
abline(model)
max(model$residuals)