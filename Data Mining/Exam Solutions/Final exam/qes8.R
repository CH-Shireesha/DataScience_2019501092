dat <- read.csv("BSE_Sensex_Index.csv")

sgr <- c()
for (i in 1:15446) {
  sgr[i] <- (dat$Close[i]-dat$Close[i+1]/dat$Close[i+1])
}
sgr[15447] <- (sgr[15446]+sgr[15445]+sgr[15444]/3)
sgr[15447]

z_sgr <- c()
sgr_mean <- mean(sgr)
sgr_mean

sgr_sd <- sd(sgr)
sgr_sd

for (j in 1:15447) {
  z_sgr[j] <- (sgr[j]-sgr_mean)/(sgr_sd)
}
outl_date <- c()
count <- 0
out <- 1
for (x in 1:15447) { 
  if(z_sgr[x] > 3){
    count <- count+1
    outl_date <- dat$Date[x]
    out <- out+1
  }
  if(z_sgr[x] < -3) {
    count <- count+1
    outl_date <- dat$Date[x]
    out <- out+1
  }
}
count
outl_date