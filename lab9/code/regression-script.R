dat = read.csv('data/Advertising.csv', header= T)
mod = lm(Sales~TV, data = dat)
mod.summary = summary(mod)
save(mod, mod.summary, file = "~/Desktop/stat159-fall2016-hw02/data/regression.RData")

pdf("images/scatterplot-tv-sales.pdf")
plot(Sales ~ TV, data = dat, pch=20, main = "Scatterplot between TV and Sales with fitted regression line")
abline(mod, col = "red")
dev.off()

png("images/scatterplot-tv-sales.png")
plot(Sales ~ TV, data = dat, pch=20, main = "Scatterplot between TV and Sales with fitted regression line")
abline(mod, col = "red")
dev.off()