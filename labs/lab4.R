load(url("http://bit.ly/dasi_nc"))
summary(nc)
length(which(is.na(nc$gained)))
gained_clean = na.omit(nc$gained)
n = length(gained_clean)
boot_means = rep(NA, 100)

for(i in 1:100){
  boot_sample = sample(gained_clean, n, replace = TRUE)
  boot_means[i] = mean(boot_sample)                       
}
boot_means
hist(boot_means,11)

source("http://bit.ly/dasi_inference")
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.90, est = "mean", boot_method = "perc")
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.95, est = "mean", boot_method = "perc")
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.95, est = "mean", boot_method = "se")
inference(nc$gained, type = "ci", method = "simulation", conflevel = 0.95, est = "median", boot_method = "se")

boxplot(weight ~ habit, data = nc)
by(nc$weight, nc$habit, mean)

inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, alternative = "twosided", method = "theoretical")
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, alternative = "twosided", method = "theoretical", order = c("smoker","nonsmoker"))
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ci", null = 0, alternative = "twosided", method = "theoretical", order = c("smoker","nonsmoker"))

boxplot(mage ~ mature, data = nc)
min(nc[nc$mature=='mature mom',]$mage)

load(url("http://bit.ly/dasi_gss_ws_cl"))
inference(y = gss$wordsum, x = gss$class, est = "mean", type = "ht", alternative = "greater", method = "theoretical")
