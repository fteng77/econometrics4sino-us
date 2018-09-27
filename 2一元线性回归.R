####一元线性回归

###例2.1：家庭收入与家庭支出
##输入家庭收入
x<-c(800,
     1200,
     2000,
     3000,
     4000,
     5000,
     7000,
     9000,
     10000,
     12000)
##输入家庭支出
y<-c(770,
  1100,
  1300,
  2200,
  2100,
  2700,
  3800,
  3900,
  5500,
  6600)
##输入散点图
plot(x,y,xlab="家庭收入",ylab="家庭支出",main="家庭收入与家庭支出")

library(ggplot2)
##
qplot(x,y,geom="point",xlab="收入",ylab="消费")
qplot(x,y,geom="point",xlab="收入",ylab="消费")+geom_smooth(method="lm",color="red")##+geom_smooth(method="auto")

xy.lm0<-lm(y~0+x)
xy.lm1<-lm(y~x)
summary(xy.lm0)
summary(xy.lm1)

predict(xy.lm1,newdata=data.frame(x=c(10000,20000,30000)),interval = "confidence")

y.hat<-coef(xy.lm1)[1]+coef(xy.lm1)[2]*20000
s<-sqrt(var(xy.lm1$residuals)*(1+1/10+(20000-mean(x))/sum((x-mean(x))^2)))
