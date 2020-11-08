dat <- read.csv("data.csv", header = TRUE)

dat$TID <- NULL
library(arules)

write.csv(dat, "Items.csv", quote = FALSE, row.names = TRUE)
transactions = read.transactions("Items.csv", sep=',', rm.duplicates = TRUE)
inspect(transactions)

frequent_itemsets <- apriori(transactions, parameter = list(sup = 0.03, conf = 0.5,target="frequent itemsets"))

inspect(sort(frequent_itemsets)[1:15])

itemFrequencyPlot(transactions, topN = 5)