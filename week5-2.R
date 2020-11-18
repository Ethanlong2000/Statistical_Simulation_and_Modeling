# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/9/30

               #复合法抽样
#select=function (){
#  u1=runif(1)
#  u2=runif(1)
#  x=0
#  if(u1<0.5){
#    x=floor(10*u2)+1
#  }
#  else{
#    x=floor(5*u2)+6
#  }
#  return(x)
#}
#array=c()
#for (i in 1:10000){
#  array[i]=select()
#}


#指数分布，两次事件发生的时间间隔的概率
#泊松分布，估计单位时间内，事件发生次数的概率


#function (lamda,U){
#  x=c()
#  f=lamda*exp(-lamda*x)
#  F=1-exp(-lamda*x)
#
#  X=(-1/lamda)*ln(U)
#}
#curve(0.5*exp(-0.5*x),0,10,ylim=c(0,1),col="green")
#par(new=T)
#curve(1-exp(-0.5*x),0,10,ylim=c(0,1))
#par(new=T)
#hist(-2*log(runif(100000)),freq = F,xlim = c(0,10),ylim=c(0,1),breaks = 100)
#x=runif(10000)
                             #课堂作业
#curve(exp(x)/(exp(1)-1),0,1,col="red")
#par(new=T)
#hist(log((exp(1)-1)*runif(10000)+1),freq = F,xlim = c(0,1),ylim=c(0,2))
                       #舍取法抽样
#u1=runif(10000)
#u2=runif(10000)
#k=sqrt(pi)
#y=(-3/2)*log(u1)
#c=(3^1.5)/(2*pi*exp(1))^0.5
#accept=y[u2<=(k*(y^0.5)*exp(-y)/(c*(2/3))*exp(-2*y/3))]
#hist(accept,breaks = seq(0,100,0.2),xlim = c(0,10),freq = F)
#par(new=T)
#plot(10*u1,((10*u1)^0.5)*exp(-u1*10)*2/sqrt(pi))

                        #课堂作业2
u1=runif(100000)
u2=runif(100000)
y=(-2)*log(u1)
#c=(2/3)*exp(3/2)
#accept=y[u2<=(((y*exp(-y))/6*exp(-5))/( (2/3)*exp(3/2)*(1/2)*exp((5-y)/2)))]
accept=y[u2<=((y/2)*exp(1-y/2))]
hist(accept,breaks = 100,xlim = c(5,10),ylim = c(0,0.1) ,freq = F)
par(new=T)
curve((x)*exp(-x)/6*exp(-5),xlim = c(5,10))
