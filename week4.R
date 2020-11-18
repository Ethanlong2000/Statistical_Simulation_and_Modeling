# Title     : TODO
# Objective : TODO
# Created by: lyh
# Created on: 2020/9/23

                  #四点分布
#x=1:4
#p=c(0.2,0.15,0.25,0.4)
#rx=sample(x,10,replace=T,prob =p)
#rx
#cat(rx,"\n")
#rx=sample(x,1000,replace=T,prob=p)
#table(rx)/1000

#生成1到n的随机排列
#a=c(1:10)
#b=c()
#for (i in 1:10){
#  x=floor(length(a)*runif(1))+1
#  b[i]=a[x]
#  a=a[-x]
#}
#b
#sample()

                    #课堂作业
#x = c(1:100)
#  q = c()
#for (y in 1:100) {
#  x = sample(x, replace = FALSE)
#  count = 0
#  for (j in 1:100) {
#    if (x[j] == j) {
#      count = count + 1
#    }
#  }
#
#  q[y] = count
#}
#E=mean(q)
#V=var(q)
                        #掷骰子
tz=function (n){
  y=c()
  x=c()
  m=1
  while (m<n){
    count=0
    while (sum(unique(x))!=21){
    x=sample(1:6,1,F)
      count=count+1
    }
    y=c(y,count)
  }
  E=mean(y)
  V=var(y)
  E
  V
}
tz(100)

