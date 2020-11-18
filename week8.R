# Title     : 计数过程
# Objective : TODO
# Created by: lyh
# Created on: 2020/10/21

    #课堂例题
#rpois(12,5)

 x=c()
 for (i in 1:10000){
  n=rpois(12,5)
   m=c()
   for (j in 1:12){
    m[j]=sum(8000*runif(n[j])+2000)
   }
  M=sum(m)
  x[i]=M
  }
 X=sort(x)[9900]
y=X/10000
y



