data = read.csv('data/Advertising.csv', header= T)

pdf("images/histogram-sales.pdf")
hist(data$Sales, main = "Histogram of Sales", xlab = "Sales")
dev.off()

png("images/histogram-sales.png")
hist(data$Sales, main = "Histogram of Sales", xlab = "Sales")
dev.off()

pdf("images/histogram-tv.pdf")
hist(data$TV, main = "Histogram of TV", xlab = "TV")
dev.off()

png("images/histogram-tv.png")
hist(data$TV, main = "Histogram of TV", xlab = "TV")
dev.off()

sink("data/eda-output.txt")
summary(data$TV)
summary(data$Sales)
sink()