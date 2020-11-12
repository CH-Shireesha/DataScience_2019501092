x <- c(1,2,2.5,3,3.5,4,4.5,5,7,8,8.5,9,9.5,10)
center1 <- 1
center2 <- 2
for (i in 2:10){
  cluster1 <- x[abs(x-center1[i-1])<=abs(x-center2[i-1])]
  cluster2 <- x[abs(x-center1[i-1])>abs(x-center2[i-1])]
  center1[i] <- mean(cluster1)
  center2[i] <- mean(cluster2)
}