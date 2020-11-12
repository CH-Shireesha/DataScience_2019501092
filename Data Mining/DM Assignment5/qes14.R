data <- read.csv("spring2008exams.csv")

q1 <- quantile(data[,3],.25,na.rm=TRUE)
q2 <- quantile(data[,3],.75,na.rm=TRUE)
iqr <- q2-q1

data[(data[,3] > q2+1.5*iqr),3]
data[(data[,3] < q1-1.5*iqr),3]
boxplot(data[,2],data[,3],col="blue",
        main="spring2008exams",
        names=c("first midterm","second midterm"),ylab="Exam Score")