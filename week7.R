# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/10/14

                #beta分布
#alpha=4
#beta=5
#curve(factorial(alpha+beta)/(factorial(alpha)*factorial(beta))*x^(alpha-1)*(1-x)^(beta-1),0,1)
                            #练习
#u1=runif(10000)
#u2=runif(10000)
#accept=u1[u2<=(256*u1*(1-u1)^3/27)]
##curve(20*x*(1-x)^3,0,1)
#plot(u1,20*u1*(1-u1)^3)
#par(new =T)
#hist(accept,breaks = seq(0,1,0.002),freq = F,col = "red")


#课堂作业

#u1=runif(100000)
#u2=runif(100000)
#accept=u1[u2<=(16*(u1^2-2*u1^3+u1^4))]
##curve(30*(x^2-2*x^3+x^4),0,1)
#plot(u1,30*(u1^2-2*u1^3+u1^4))
#par(new =T)
#hist(accept,breaks = seq(0,1,0.002),freq = F)
#E=length(accept)/100000
#E

#u1=runif(100000)
#u2=runif(100000)
#accept=u1[u2<=1]
#curve(x^0,0,1,ylim=c(0,2),col="red")
#par(new=T)
#hist(accept,breaks = seq(0,1,0.002),freq = F,ylim = c(0,2))

                  #正态分布(中心极限定理抽样)
#Normol=function (n){
#  data=c()
#  for (i in 1:100000){
#    data[i]=(sum(runif(n)-0.5*n))/sqrt(n/12)
#  }
#  return (data)
#}
#op=par(mfrow=c(2,2))
#hist(Normol(1),breaks = 1000,freq = F)
#hist(Normol(2),breaks = 1000,freq = F)
#hist(Normol(10),breaks = 1000,freq = F)
#hist(Normol(1000),breaks = 1000,freq = F)
#par(op)

#                         #极坐标画圆
#plot.new()
#plot.window(xlim = c(-20,20),ylim = c(-20,20))
#t=seq(0,2*pi,by=pi/100)
#for (r in seq(0,20,5)){
#  x=r*cos(t)
#  y=r*sin(t)
#  lines(x,y)
#}

#极坐标画玫瑰线

#plot.new()
#plot.window(xlim = c(-2,2),ylim = c(-2,2))
#t=seq(0,10*pi,by=pi/100)
#
#  r=2*sin(4*t)
#  x=r*cos(t)
#  y=r*sin(t)
#  lines(x,y)

