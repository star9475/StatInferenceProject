library(ggplot2)

set.seed(1623); qplot(rnorm(1000), geom="histogram")

set.seed(1623); qplot(rexp(1000,2), geom="histogram")

set.seed(1623); mns = NULL; 
for (i in 1 : 1000) mns = c(mns, mean(rexp(40,.2))); 


set.seed(1623);
meandata <- data.frame(
     x = c(apply(matrix(rexp(nosim * nosample, .2), nosim), 1, mean)),
     n = factor(rep(c(nosample), c(nosample))) 
     )

p <- qplot(mns,
           geom="histogram",
           main = "Average Means of 40 Samples",
           xlab = "Means",
           fill=I("blue"),
           col=I("darkgreen"),
           alpha=I(.2)
)
p + geom_vline(xintercept=5)

set.seed(1623); vars = NULL; 
for (i in 1 : 1000) mns = c(vars, var(rexp(40,.2))); 



g <- ggplot(data = meandata, aes(x = x) ,xlab = "Means") +
     geom_histogram(aes(y = ..density..), fill = ("blue"), col=("darkgreen"), alpha=.4) +
     labs(title ="Average Means of 40 Samples", x="means") +
     geom_vline(xintercept=5)
g



p <- ggplot(data = ToothGrowth, aes(x=dose,y=len )) + 
     geom_point() +facet_wrap(~supp) + geom_smooth() 
     
