# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/9/16

#new <- function(n){
#x <- c()
#y=c()
#for(i in 1:n){
# x1=runif(1)
# y1=runif(1)
# if (y1<x1^2){
#x=c(x,x1)
#y=c(y,y1)
# }
#}
#  plot(x,y)
#  return(length(x)/n)
#}
#new(10000)
#y1=runif(1000000)
#mean((1-y1^2)^(3/2))
#
#y2=runif(1000000)
#mean(4*exp((4*y2-2)+(4*y2-2)^2))
#
#y3=runif(1000000)
#mean((y3)^(-2)*(1/y3-1)*(1+(1/y3-1)^2)^(-2) )
#
#y4=runif(1000000)
#mean((y4)^(-2)*exp( -(1/y4-1)^2 ) )


x = c()
i = 1
while (i < 1000) {
  j = 1
  while (sum(runif(j)) <= 1) {
    j = j + 1
  }
  x = c(x, j)
  i = i + 1
}
return(sum(x) / length(x))