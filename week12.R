# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/11/18

#对偶变量实例
#U1=runif(10000)
#U2=1-U1
#X1=exp(U1)
#X2=exp(U2)
#X=0.5*(X1+X2)
#mean(X)
#var(X)

#课堂作业一
x=seq(0.1,2.5,length=10)
u1=runif(100)
u2=1-u1
Xtemp1=c()
Xtemp2=c()
X =c()
V=c()
W=c()
   for(i in 1:10){
     Xtemp1=0.5*u1+x[i]/sqrt(2*pi)*exp(-(x[i]*u1)^2/2)
     Xtemp2=0.5*u2+x[i]/sqrt(2*pi)*exp(-(x[i]*u2)^2/2)
     X=0.5*(Xtemp1+Xtemp2)
    V[i]=var(X)
     print(V[i])
    W[i] =(var(Xtemp1)-var(X))/var(Xtemp1);
     print(W[i])
   }

#c(mean(T1),mean(T2))
#第二次
#U=runif(100000)
#T1=exp(-U)/(1+U^2)
#T2=T1-cov(exp(-0.5)/(1+U^2),exp(-U)/(1+U^2))/var(exp(-0.5)/(1+U^2))*(exp(-0.5)/(1+U^2)-mean(exp(-0.5)/(1+U^2)))
#c(var(T1), var(T2))
#(var(T1) - var(T2)) / var(T1)




