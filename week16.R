# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/12/16

#S=function (x){
#  125/(2+x)-(18+20)/(1-x)+34/x
#}
#uniroot(S,c(0,1))

#exam=function(ep=1e-7){
#  theta=0.5
#  k=1
#  repeat{
#    k=k+1
#    theta[k]={
#      (159*theta[k-1]+68)/(197*theta[k-1]+144)
#      if(abs(theta[k]-theta[k-1])<ep){
#        break
#      }
#    }
#  }
#  list(theta=theta[k],iter=k)
#}

#moth=function (p,n.obs){
#  n=sum(n.obs)
#  nc= n.obs[1]
#    ni=n.obs[2]
#  nt=n.obs[3]
#  ntt=nt
#  cat(p,"\n")
#  pc=pi=pt=rep(0,20)
#  pc[1]=p[1]
#    pi[1]=p[2]
#      pt[1]=1-p[1]-p[2]
#  for (i in 2:20){
#    pc.old=pc[i-1]
#    pi.old=pi[i-1]
#    pt.old=pt[i-1]
#    den=pc.old^2+2*pc.old*pi.old+2*pc.old*pt.old
#    ncc=pc.old^2*nc/den
#    nci=2*pc.old*pi.old*nc/den
#    nct=2*pc.old*pt.old*nc/den
#    nit=2*ni*pi.old*pt.old/(pi.old^2+2*pi.old*pt.old)
#    nii=ni*pi.old^2/(pi.old^2+2*pi.old*pt.old)
#    pc[i]=(2*ncc+nci+nct)/(2*n)
#    pi[i]=(2*nii+nci+nit)/(2*n)
#    pt[i]=(2*ntt+nct+nit)/(2*n)
#  }
#  return(list(pc=pc,pi=pi,pt=pt))
#}
#n.obs=c(85,196,341)
#p=c(1/3,1/3)
#a=moth(p,n.obs)

fx=function(x,s){
	if(any(x<0)){return(0)}
	stopifnot(s >0)
	return((x/s^2)*exp(-x^2/(2*s^2)))
}

n=10000
s=4
x=numeric(n)
x[1]=rchisq(1,df=1)
m=0
u=runif(n)

for(i in 2:n){
	xn=x[i-1]
	j=rchisq(1,df=xn)
	num=fx(j,s)*dchisq(xn,df=j)
	den=fx(xn,s)*dchisq(j,df=xn)
	if(u[i]<=num/den){
		x[i]=j
	}else{
		x[i]=xn
        m=m+1
	}
}
print(m/n)

#curve((x/s^2)*exp(-x^2/(2*s^2)),0,15,ylim=c(0,0.2))
#par(new=T)
#hist(x,xlim=c(0,15),freq=F,ylim=c(0,0.2))
