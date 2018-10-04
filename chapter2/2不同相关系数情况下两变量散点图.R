library(mvtnorm)
#library(ggplot2)
rho<-0.5
sigma<-matrix(c(1,rho,rho,1),nrow=2)
xx<-rmvnorm(1000,mean=rep(0,nrow(sigma)),sigma=sigma)
main<-paste("相关系数为",rho,sep="")
plot(xx,xlab="",ylab="",main=main)

