count<-0
pos_x<-c()
l<-0
while (l<50){
  x<-rnorm(1)
  if(x>0){
   pos_x<-c(pos_x,x) 
 #  count<-count+1
  }
  count<-count+1 
 l<-length(pos_x)
}
pos_x
count
l


n <- 0
pos_num <- c()

while (n < 50){
  x <- rnorm(1)
  if (x > 0) {
    pos_num <- c(pos_num, x)
    n <- n + 1
  }
}

pos_num

#Limit example
y_old<-1
x<-1
diff<-10

while(diff>=10^(-1)){
  x<-x+1
  y<-1/x
  diff<-abs(y-y_old)/y_old
  print(diff)
  print(x)
  print(y)
  y<-y_old
}

x
y





diff <- 10
x <- 2
y_old <- 1
while (diff > 10^(-6)){
  y_new <- 1 / x
  diff <- abs(y_old - y_new) / y_old
  x <- x + 1
  y_old <- y_new
}


