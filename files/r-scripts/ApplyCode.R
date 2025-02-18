x <- matrix(rnorm(1000), nrow = 10)
dim(x)
apply(x,2,sd)

x <- matrix(rnorm(1000), nrow = 20)
apply(x,1,quantile,prob=c(0.25,0.5,0.75))

x<-lapply(1:100, rnorm, n=1000)

fivesum<-function(x){
  y<-list(mean = mean(x), sd = sd(x), median = median(x), min = min(x), max = max(x))
  return(y)
}

result<-lapply(x, fivesum)
result[[1]]$mean

simp_res<-sapply(x,fivesum) 
simp_res

library(tidyverse)
fruits <- c("apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi", "lemon")

sapply(fruits,str_length)

# Generate a list of 10 lists, each containing 5 random numbers
lists <- lapply(1:10, function(i) {
  means <- rpois(1, 3)
  rnorm(5, means)
})
 
sapply(lists,mean)



