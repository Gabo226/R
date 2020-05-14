#Genera muestras aleatorias de tamaño 5
#Obtiene la distribución normal
set.seed(1)
N <- 5
X <- rnorm(N)
sqrt(N)*mean(X)/sd(X)

#Obtiene la proporción de la distribución de tamaño 2
set.seed(1)
N <- 5
B<- 1000

tstats <- replicate(B,{
  X <- rnorm(N)
  sqrt(N)*mean(X)/sd(X)
})
mean(tstats>2)


#Análisis de casos de aproximaciones de una dsitribución normal
Ns<-seq(5,30,5)
B <- 1000
mypar(3,2)
LIM <- c(-4.5,4.5)
for(N in Ns){
  ts <- replicate(B,{
    x <- rnorm(N)
    y <- rnorm(N)
    t.test(x,y, var.equal = TRUE)$stat
  })
  ps <- seq(1/(B+1),1-1/(B+1),len=B)
  qqplot(qt(ps,df=2*N-2),ts,main=N,
         xlab="Theoretical",ylab="Observed",
         xlim=LIM, ylim=LIM)
  abline(0,1)
}  

#Simulación Monte Carlo
#Simulamos un población que no es una distribución normal, por lo cual no se aplica el teorema Monte Carlo
set.seed(1)
N <- 15
B <- 10000
tstats <- replicate(B,{
  X <- sample(c(-1,1), N, replace=TRUE)
  sqrt(N)*mean(X)/sd(X)
})
ps=seq(1/(B+1), 1-1/(B+1), len=B) 
qqplot(qt(ps,N-1), tstats, xlim=range(tstats))
abline(0,1)

#Comprobación de la distribución normal usando la simulación Monte Carlo
library(rafalib)
mypar(3,2)

Ns<-seq(5,30,5)
B <- 1000
mypar(3,2)
LIM <- c(-4.5,4.5)
for(N in Ns){
  ts <- replicate(B, {
    X <- rnorm(N)
    sqrt(N)*mean(X)/sd(X)
  })
  ps <- seq(1/(B+1),1-1/(B+1),len=B)
  qqplot(qt(ps,df=N-1),ts,main=N,
         xlab="Theoretical",ylab="Observed",
         xlim=LIM, ylim=LIM)
  abline(0,1)
} 

#Simulación de una aproximación de 9999 grados
set.seed(1)
N <- 1000
B <- 10000
tstats <- replicate(B,{
  X <-  sample(c(-1,1), N, replace=TRUE)
  sqrt(N)*mean(X)/sd(X)
})
qqnorm(tstats)
abline(0,1)

#Media de muestras con promedio 0 y largo 1
set.seed(1)
Ns <- seq(5,45,5)
library(rafalib)
mypar(3,3)
for(N in Ns){
  medians <- replicate(10000, median ( rnorm(N) ) )
  title <- paste("N=",N,", avg=",round( mean(medians), 2) , ", sd*sqrt(N)=", round( sd(medians)*sqrt(N),2) )
  qqnorm(medians, main = title )
  qqline(medians)
}

