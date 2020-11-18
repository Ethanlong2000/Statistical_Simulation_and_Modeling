# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/9/27

#possion1=function (lamda){
#  u=runif(1)
#  i=0
#  p=exp(lamda)
#  F=p
#  while (F<=u){
#    p=lamda*p/(i+1)
#    F=F+p
#    i=i+1
#  }
#
#  return(i)
#}
#possion1(100)

#lamda=4.3
#x=1:10
#y=dpois(x,lamda)
#plot(x,y,type = "p")

#舍选抽样法
#AcceptReject=function(N){
#  p=c(0.11,0.12,0.09,0.08,0.12,0.1,0.09,0.09,0.1,0.1)
#  data=c()
#  for (i in 1:N){
#    u1=runif(1)
#    u2=runif(2)
#    y=floor(10*u1)+1
#    while (u2>p[y]/0.12){
#      u1=runif(1)
#      u2=runif(2)
#      y=floor(10*u1)+1
#    }
#    data[i]=y
#  }
#  return(data)
#}
#AcceptReject(10)

#x=1:10
#p=c(0.11,0.12,0.09,0.08,0.12,0.1,0.09,0.09,0.1,0.1)
#u1=floor(10*runif(10000))+1
#barplot(table(u1))
#
#u2=runif(10000)
#accept=u1[u2<=p[u1]/0.12]
#length(accept)
#
#plot(x,y,ylim = c(0,0.12))
#par(new=TRUE)
#plot(table(accept)/length(accept),ylim = c(0,0.12))


x=1:10
fx=table(sample(x,50,replace = T))

y=fx/50
u1=floor(10*runif(100000))+1
barplot(table(u1))

u2=runif(100000)
accept=u1[u2<=p[u1]/max(y)]
length(accept)

plot(x,y,ylim = c(0,max(y)))
par(new=TRUE)
plot(table(accept)/length(accept),ylim = c(0,max(y)))
e=(length(accept)/100000)/2
e

