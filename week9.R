# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/10/28
#
#process=function(N){
#U=runif(N)
#numda=10
#x=(-1/numda)*ln(U)
#s=c()
#for (i in 2:N){
#  s[i]=s[i-1]+x[i]
#  return(s)
#}
#}

#process=function(lamda,N){
# x=rexp(N,lamda)
#  s=cumsum(x)
#  return(s)
# }
#
#t=c()
#for (i in 1:10000){
#  data=process(3,10)
#  t[i]=data[10]
#}


#process=function(lamda,T){
#  s=c()
#  t=0
#  I=0
#  while (t<T){x=-log(runif(1))/lamda
#  I=I+1
#  t=t+x
#    s[I]=t
# }
#  return(s)
# }
#I=c()
#for (i in 1:10000){
#  data=process(3,10)
#  I[i]=length(data)-1
#}

#课堂作业 模拟参数为lamda的泊松过程在时刻T=10之前的状态
# process=function(lamda,T){
#	n=rpois(1,lamda*T)
#    U=T*runif(n)
#	S=sort(U)
#	return(S)
#}
#I=c()
#for(i in 1:10000){
#	data=process(3,10)
#	I[i]=data[1]
#}
#I


#单服务员系统

#时间变量:t
#计数变量：Na 时刻t来到的顾客数
#        Nd 时刻t离开的顾客数
#系统状态变量：n：时刻t时系统中的顾客数
#时间清单：tA表示时刻t之后，下一个顾客到来的时间
#        tD表示正在接受服务的顾客完成服务的世间
#
#输出变量：A(i):第i个顾客到来的时间
#        D(i)第i个顾客离去的时间
#Tp，最后一个顾客离开系统超出的时间
#服务时间：Y服从分布G

#Arrival=function(lamda,g,s){
#	#g(t)表示强度函数（随时间变化）
#	#lamda表示g(t)的最大值
#	#该子程序用来产生时刻s后第一个顾客的到达时间
#
#	t=s;
#	while(1){
#		t=t-log(runif(1))/lamda
#		if(runif(1)<=g(t)/lamda){break}
#	}
#	return(t)
#}
#g=function(x){
#  return(2*x)
#}
#
#MG1=function(Arrival,T,mu){
#	#假设服务时间Y服从参数为mu的指数分布
#	t=0;Na=0;Nd=0;n=0;
#	A=c();D=c();N=c();
#	tA=Arrival(lamda,g,t);tD=Inf
#	while(1){
#		if(tA<=tD & tA<=T){
#			t=tA;Na=Na+1;n=n+1;
#			tA=Arrival(lamda,g,t);
#			if(n==1){
#				Y=-log(runif(1))/mu;
#				tD=t+Y;
#			}
#			A[Na]=t
#		}else if(tD<=tA & tD<=T){
#			t=tD;n=n-1;Nd=Nd+1;
#			if(n==0){tD=Inf}
#			else{Y=-log(runif(1))/mu;tD=t+Y}
#			D[Nd]=t;N[Nd]=n
#		}else if(tA>T & tD>T){break}
#	}
#	while(1){
#		if(n>0){
#			t=tD;n=n-1;Nd=Nd+1;
#			if(n>0){Y=-log(runif(1))/mu;tD=t+Y}
#			D[Nd]=t;N[Nd]=n
#		}else if(n<=0){break}
#	}
#	Tp=max(t-T,0)
#	list(w=mean(D-A),gohome=Tp,L=mean(N))
#}

Arrival=function(lamda,g,s){
	#g(t)表示强度函数（随时间变化）
	#lamda表示g(t)的最大值
	#该子程序用来产生时刻s后第一个顾客的到达时间

	t=s;
	while(1){
		t=t-log(runif(1))/lamda
		if(runif(1)<=g(t)/lamda){break}
	}
	return(t)
}
g=function(x){
	return(2*x)
}

MG1=function(Arrival,T,mu){
	#假设服务时间Y服从参数为mu的指数分布
	t=0;Na=0;Nd=0;n=0;
	A=c();D=c();N=c();
	tA=Arrival(lamda,g,t);tD=Inf
	while(1){
		if(tA<=tD & tA<=T){
			t=tA;Na=Na+1;n=n+1;
			tA=Arrival(lamda,g,t);
			if(n==1){
				Y=-log(runif(1))/mu;
				tD=t+Y;
			}
			A[Na]=t
		}else if(tD<=tA & tD<=T){
			t=tD;n=n-1;Nd=Nd+1;
			if(n==0){tD=Inf}
			else{Y=-log(runif(1))/mu;tD=t+Y}
			D[Nd]=t;N[Nd]=n
		}else if(tA>T & tD>T){break}
	}
	while(1){
		if(n>0){
			t=tD;n=n-1;Nd=Nd+1;
			if(n>0){Y=-log(runif(1))/mu;tD=t+Y}
			D[Nd]=t;N[Nd]=n
		}else if(n<=0){break}
	}
	Tp=max(t-T,0)
	list(w=mean(D-A),gohome=Tp,L=mean(N))
}


lamda=1.2;T=12;mu=2
result=data.frame(w=0,gohome=0,L=0)
for(i in 1:1000){
	tmp=MG1(Arrival,T,mu)
	add=c(tmp$w,tmp$gohome,tmp$L)
	result[i,]=add
}

A=sum(result)/length(result)
#顾客在理发店平均时间，理发师平均加班时间，平均每日顾客数
