beta_0<-0
beta_1<-0
N=100
for(i in 1:N){
x <- rnorm(250, 3, 1)
#hist(x)
y<-rep(0,length(x))
y<-3*x+20
#plot(x,y)

error<-rnorm(length(x),0,sqrt(2))
#hist(error)

y_err<-y+error
#plot(x,y_err)

model<-lm(y_err~x)
#summary(model)
beta_0 <- c(beta_0,model$coefficients[[1]])
beta_1 <- c(beta_1, model$coefficients[[2]])
}

beta<-cbind(beta_0[c(2:(N+1))],beta_1[c(2:(N+1))])

colMeans(beta)

