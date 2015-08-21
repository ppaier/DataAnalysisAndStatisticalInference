source("http://www.openintro.org/stat/data/present.R")

dim(present)
names(present)
present$boys
plot(x = present$year, y = present$girls)

present$count <- present$boys + present$girls
plot(x = present$year, y = present$count)
present$year[which.max(present$count)]

plot(x = present$year, y=present$boys/present$count)
plot(x = present$year, y=present$boys - present$girls)
plot(x = present$year, y=present$boys/present$girl)

present$year[which.max(abs(present$boys-present$girls))]
