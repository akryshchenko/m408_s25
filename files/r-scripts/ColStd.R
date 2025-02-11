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




x <- rnorm(501)
median(x)
sx<-sort(x)
sx[(length(x)+1)/2]
y <- rnorm(600)
median(y)
sy<-sort(y)
(sy[length(y)/2]+sy[(length(y)/2)+1])/2

x <- rnorm(500)
sx<-sort(x)
midx<-0
if (length(x)%%2==0){
  midx<-(sx[length(x)/2]+sx[(length(x)/2)+1])/2
} else{
  midx<-sx[(length(x)+1)/2]
}
midx
median(x)

