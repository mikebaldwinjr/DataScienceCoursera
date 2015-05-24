myfunction <- function(){
x<-rnorm(100)
mean(x)
}

second <- function(x){
x + rnorm(length(x))
}

third <- function(){
x<-rnorm(50)
(x+1000)
}