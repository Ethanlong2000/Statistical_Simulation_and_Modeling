# Title     :分层抽样，
# Objective : TODO
# Created by: lyh
# Created on: 2020/11/25

#homework1
#m1=1000
#m2=1000
#m3=1000
#m4=1000
#s=function(m,a,b){
#  x=a+(b-a)*runif(m)
#  y=exp(-x)/(1+x^2)
#  return(mean(y))
#}
#S1=(s(m1,0,0.25)+s(m2,0.25,0.5)+s(m3,0.5,0.75)+s(m4,0.75,1))/4

#homework2

f=function(n) {
 X=0
  for(i in 1:n){
    S=rbinom(1,20,0.8)
     if(S>=16) {
       X[i]=3^20/6^S
     }
     else{
       X[i]=0
     }
  }
  return(c(mean(X),var(X)))
}
f(100000)


