# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/11/4

#仓储模型
Arrival=function(lamda,s){
	#该子程序用来产生时刻s后第一个顾客的到达时间
	t=s;
  t=t-log(runif(1))/lamda
	return(t)
}

BuyCount=function(){
#一位顾客的购买量
  c=0
  p=runif(1);
  if(p<=0.02){
    c=4
  }else if(p<=0.1&p>0.02){
    c=3
  }else if(p<=0.3&p>0.1){
    c=2
  }else if(p>0.3){
    c=1
  }
return(c) ;
}

c=function (y){      #进货花费
  ImportCost=5#进货单价
   Transport=10#每次运费
  Y=y*ImportCost+Transport
  return(Y)
}

StoreModule=function (T){
  t=0  #时间
  S=120#库存最大值
  s=10 #订货阈值
  x=S  #当前货量
  y=0 #当前订货量
  D=0 #顾客需求量
  t0=Arrival(8,0)#下一个顾客到达的时间
  t1=Inf #下一批订单到达的时间(∞)
  C=0 #到时刻t时订购花费的总和
  H=0 #到时刻t时商品库存的总花费
  R=0 #到时刻t时获得的收入总量
  r=12#每件零售价
  h=0.5#每天每件的库存费
  L=1#每次运货时间
  while(t0<=T){
    if(t0<t1){
  H=H+(t0-t)*x*h
  t=t0
  t0=Arrival(8,t)
  D=BuyCount();
  w=min(D,x)
  R=R+w*r
  x=x-w
  if(x<s&y==0){
    y=S-x
    t1=t+L
  }
}
if(t0>t1){
H=H+(t1-t)*x*h
  t=t1
  C=C+c(y)
  x=x+y
  y=0
  t1=Inf
  }
}
Income=R-H-C
return (Income)
}

for (i in 1:10000){
  A[i]=StoreModule(30)
}

E=mean(A)
E

#维修模型
#RepairModule=function (lamda1,lamda2){  #lamda1工作寿命参数 lamda2修理时间参数
#   t=0 #时刻
#   r=0#时刻t出故障的机器数
#   tx=Inf #正在修理的机器被修好的时间
#
#  n=15#同时工作才能运行的零件数
#  s=5#备用零件数
#  T=0
#
# tn=sort(rexp(n,lamda1))#正在使用的n台机器出故障的时间
#  while (1){
#     if(tn[1]<tx){
#    t=tn[1]
#    r=r+1
#    if(r>=s+1){
#      T=t
#      break
#    }else if(r<s+1){
#      x=rexp(1,lamda1)
#      tn[1]=t+x
#      tn=sort(tn)
#    }
#    if(r==1){
#      y=rexp(1,lamda2)
#      tx=t+y
#    }
#
#  }else{
#    t=tx
#    r=r-1
#    if(r>0){
#      y=rexp(1,lamda2)
#      tx=t+y
#    }else if(r==0){
#      tx=Inf
#    }
#  }
#
#  }
#   return(T)
#}
#a=RepairModule(0.01,0.1)
#a