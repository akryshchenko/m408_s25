x <- matrix(rnorm(1000), nrow = 10)

n<-dim(x)[2]

std<-rep(0,n)

for (i in 1:n){
  dev<-0
  for (ii in 1:dim(x)[1]){
   dev<-dev+(x[ii,i]-mean(x[,i]))^2 
  }
  std[i]<-dev/(dim(x)[1]-1)
}

sqrt(std)

truestd<-rep(0,n)
for (i in 1:n){
truestd[i]<-sd(x[,i])
}
truestd
