# Title     : TODO
# Objective : 检验
# Created by: lyh
# Created on: 2020/12/2

#卡方检验
#new=function (n){
#     Tn=c()
#  for (i in 1:n){
#     s=sample(1:6,100,replace = T)
#     mean=100/6
#     data=c(length(s[s==1]),length(s[s==2]),length(s[s==3]),length(s[s==4]),length(s[s==5]),length(s[s==6]))
#
#     T=sum((data-mean)^2/mean)
#     #df=6-1
#     #p=1-pchisq(T,df)
#     Tn[i]=T
#  }
#   return(Tn)
#}
#t=new(10000)
#a=length(t[t>11.12])/10000
#a

#homework1
D=function(X){
	Y=sort(X)
	M=0;
    n=length(X);
	for(i in 1:n){
      #M[i]=max(i/n-pexp(Y[i],1/100),pexp(Y[i],1/100)-(i-1)/n)
      M[i]=max(i/n-(1-exp(-Y[i]/100)),(1-exp(-Y[i]/100))-(i-1)/n)
	}
	d=max(M)
	return(d)
}
U=function(X){
	Y=sort(X)
	M=0;
    n=length(X);
	for(i in 1:n){
      #M[i]=max(i/n-pexp(Y[i],1/100),pexp(Y[i],1/100)-(i-1)/n)
      M[i]=max(i/n-Y[i],Y[i]-(i-1)/n)
	}
	d=max(M)
	return(d)
}
X=c(71,198,139,145,21,31,47,122,146,109)

#ks.test(X,"pexp",1/100)
#D(X)
Du=c()
for (i in 1:100000){
	u=runif(10)
	Du[i]=U(u)
}
p=length(Du[Du>0.26378])/length(Du)
