
#Def of coefficients
N=1000
set.seed(1)
a=rnorm(N)
b=rnorm(N)
summary(a)
summary(b)

#Calculus of p
d=a^2-4*b
summary(d)
ones=(d>=0)
p=sum(ones)/N
print(p)
hist(d)

#Graph of the curves
plot.new()
grid()
par(new = TRUE)
for (i in 1:5){
  curve(x^2+a[i]*x+b[i],from = -3, to = 3, ylim=c(-3,15), ylab="y", main="parabole" )
  par(new = TRUE)
  Sys.sleep(0.3)
}
abline(h=0, col="red")

#Calculus and graph of the roots
x1=(0.5)*(-a+sqrt(d))
x2=(0.5)*(-a-sqrt(d))
y1=integer(length(x1))
y2=integer(length(x2))
for (i in 1:5) {
  points(x1[i], y1[i], pch=4, col="blue")
  points(x2[i], y2[i], pch=4, col="blue")
}

plot.new()
grid()
par(new = TRUE)
x=c(x1,x2)
y=integer(length(x))
plot(x, y, pch=4, xlim=c(-4,4), ylim=c(-2,2),xlab="x", ylab="y",main="distribuzione zeri" )
par(new = TRUE)
abline(h=0, col="red")
summary(x)

hist(x)
hist(x1)
hist(x2)
qqnorm(x1)
qqline(x1, col="red")
qqnorm(x2)
qqline(x2, col="red")
qqnorm(x, pch=4)
qqline(x, col="red")
kurt(x)