
task1<-read.csv(file.choose(),header=T)
head(task1)
tail(task1)

pairs(~ X + Y,data=task1,col="red")

model1<-lm(Y~X,data=task1)
model1

summary(model1)
confint(model1)

task1$Y_pred<-fitted(model1)
task1$Y_resi<-residuals(model1)
task1

plot(model1)
