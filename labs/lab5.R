source("http://bit.ly/dasi_inference")
load(url("http://www.openintro.org/stat/data/atheism.RData"))
us12 = subset(atheism, atheism$nationality == "United States" & atheism$year == "2012")
us12atheists = subset(atheism, atheism$nationality == "United States" & atheism$year == "2012" & atheism$response == "atheist")

inference(us12$response, est = "proportion", type = "ci", method = "theoretical", success = "atheist")

n <- 9604
p <- seq(0, 1, 0.01)
me <- 2*sqrt(p*(1 - p)/n)
plot(me ~ p)

spain = subset(atheism, atheism$nationality == "Spain")
inference(spain$response, spain$year, est = "proportion", type = "ht", method = "theoretical", success = "atheist", alternative = "twosided")

us = subset(atheism, atheism$nationality == "United States")
inference(us$response, us$year, est = "proportion", type = "ht", method = "theoretical", success = "atheist", alternative = "twosided")
