ca <- read.csv("CA_house_prices.csv",header = F)
oh <- read.csv("OH_house_prices.csv",header = F)

boxplot(ca$V1, oh$V1, main="Shireesha's Graph",
        col="red",
        names=c("California", "Ohio"),
        ylab="Prices")

hist(ca[, 1], breaks = seq(0, 3500, by = 500), col = "orange", xlab = "CA House Prices (in Thousands)", 
    ylab = "Frequency", main = "Shireesha's Graph")

CAecdf <- ecdf(ca[, 1])
OHecdf <- ecdf(oh[, 1])
plot(CAecdf, pch = 1, xlab = "House Prices (in Thousands)", ylab = "Cumulative Percent", 
    main = "Shireesha")
lines(OHecdf, col = "blue", pch = 3)
legend(2000, 0.6, legend = c("California", "Ohio"), pch = c(1, 3), 
    col = c("black", "blue"), lwd = 1:3)