load(url("http://www.openintro.org/stat/data/mlb11.RData"))

plot(mlb11$at_bats, mlb11$runs)
cor(mlb11$runs, mlb11$at_bats)

plot_ss(x = mlb11$at_bats, y = mlb11$runs)
plot_ss(x = mlb11$at_bats, y = mlb11$runs, showSquares = TRUE)

m1 <- lm(runs ~ at_bats, data = mlb11)
summary(m1)

m2 <- lm(runs ~ homeruns, data = mlb11)
summary(m2)

plot(mlb11$runs ~ mlb11$at_bats)
abline(m1)
mlb11$runs[mlb11$at_bats == 5579] - (-2789.24+0.6305*5579)

plot(m1$residuals ~ mlb11$at_bats)
abline(h = 0, lty = 3)  # adds a horizontal dashed line at y = 0

hist(m1$residuals)

m1 <- lm(runs ~ hits, data = mlb11)
summary(m1)

m1 <- lm(runs ~ new_obs, data = mlb11)
summary(m1)


