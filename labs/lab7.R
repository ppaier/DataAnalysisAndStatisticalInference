load(url("http://www.openintro.org/stat/data/evals.RData"))

median(evals$score)
boxplot(evals$score)

length(which(evals$score<3))

plot(evals$score ~ evals$bty_avg)
plot(evals$score ~ jitter(evals$bty_avg))

m_bty <- lm(score ~ bty_avg, data=evals)
summary(m_bty)
plot(m_bty)
plot(m_bty$residuals)

plot(evals$bty_avg ~ evals$bty_f1lower)
cor(evals$bty_avg, evals$bty_f1lower)

plot(evals[,13:19])

m_bty_gen <- lm(score ~ bty_avg + gender, data = evals)
summary(m_bty_gen)
multiLines(m_bty_gen)

m_bty_rank <- lm(score ~ bty_avg + rank, data = evals)
summary(m_bty_rank)

m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval 
             + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m_full)


