# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/12/9
x=c(6,7,3,4,7,3,7,2,6,3,7,8,2,1,3,5,8,7)
n=length(x)
N=0
m=8
for (i in 1:(m+1)){
  N[i]=length(x[x==i-1])
}
p_hat=mean(x)/m
p=0
p[1]=pbinom(0,m,p_hat)
for (i in 2:(m+1)){
  p[i]=pbinom(i-1,m,p_hat)-pbinom(i-2,m,p_hat)
}
Q=sum((N-n*p)^2/(n*p))
pvalue=1-pchisq(Q,m)
