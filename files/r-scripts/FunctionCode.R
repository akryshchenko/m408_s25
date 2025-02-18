logsqrt<-function(x){
 y<-2*log(x)
 return(y)
}

logsqrt(12)

ex3<-function(x,y){
  if(x<0){f<-x^(3)*exp(y)}
  else{
    if(y<=0){
      stop('y has to be positive')
      }
    else{
    f<-x^(2)+5+log(y)
    }
  }
  return(f)
}

ex3(1,1)

zScore<-function(x,y){
  n<-length(y)
  z<-(x-mean(y))/sqrt(sd(y)^2/n)
  return(z)
}

y<-rnorm(1000)
x<-0
zScore(x,y)
