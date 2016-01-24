library(ggplot2)

set.seed(1623); qplot(rnorm(1000), geom="histogram")

set.seed(1623); qplot(rexp(1000,2), geom="histogram")

set.seed(1623); mns = NULL; 
for (i in 1 : 1000) mns = c(mns, mean(rexp(40,.2))); 

p <- qplot(mns,
           geom="histogram",
           main = "Average Means of 40 Samples",
           xlab = "Means",
           fill=I("blue"),
           col=I("darkgreen"),
           alpha=I(.2)
)
p + geom_vline(xintercept=5)