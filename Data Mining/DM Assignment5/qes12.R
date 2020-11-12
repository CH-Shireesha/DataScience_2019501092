data <- read.csv("spring2008exams.csv")

mean_exam <- mean(data[,3],na.rm=TRUE) 
sd_exam <- sd(data[,3],na.rm=TRUE)
z <- (data[,3]-mean_exam)/sd_exam
li = sort(z)
large = li[length(li)]
small = li[1]
large
small