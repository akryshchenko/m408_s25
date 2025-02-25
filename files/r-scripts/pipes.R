x <- 1:10
x
sapply(x, function(x) rnorm(1,x))

x <- 1:10
sapply(x, \(x) rnorm(1,1,x))

SQR<-\(x) x^2
SQR(5)

numbers <- 1:40
sapply(numbers, \(x){if(x>10){x^2}else{x^3}})
sapply(numbers, SQR)
sapply(numbers, \(x) x^2)



temp_f<-c(32, 68, 104, 50)
sapply(temp_f, \(x){5*(x-32)/9})


x <- 1:40
x |> mean()
x |> mean

x <- 1:10
x %>%  mean()
x %>%  mean

x<-5
x %>% rnorm(1, .)
x %>% rnorm()

mtcars
plot(mtcars$mpg, mtcars$hp)
mtcars%$%plot(mpg, hp)

sin_40 <- 1:40 %>% mean %T>% print %>% sin
#T pipe example
rnorm(100) %>% 
  matrix(ncol=2) %>% 
  sin() %T>% 
  plot() %>% 
  colSums()

#Using the vector below, find the standard deviation using a pipe:

x <- rgamma(100, 1)
x %>% sd
sd(x)

#Chain pipe the previous results into the 𝑠𝑖𝑛(𝑥).

x <- rgamma(100, 1)
x %>% sd %>% sin

#Chain pipe the previous results into 𝑒^𝑥
x <- rgamma(100, 1)
x %>% sd %>% sin %>% exp

#Chain pipe the previous results into 𝑥^2+5*𝑥+4
x %>% sd %>% 
  cos_sin %>% 
  cos_sin %>% 
  cos_sin %>% 
  cos_sin %>%   
  exp %>% 
  (\(x){x^2+5*x+4})


