#Clase 26/09

e
lm
lm <- function(x){x*x}
lm
rm(lm) #rm remove from memory

search()

library("paquete") #para subir el lugar en donde busca 

#Variable libre: Variable que no está definida en la función pero si se utilizará

hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
  }
  potencia
}

ls(environment(cubica))
get("n",environment(cubica))

y <- 10
f <- function(x){
  y <- 2
  y^2+g(x)
  }

g <- function(x){
  x*y
}

f(3)


#Dates and times
x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))
date()

#funciones de ciclo

lapply
#match.fun(FUN) busca si es función 
#"!" sirve para decir que no !is.vector(x): Si NO es un vector...

#ejemplo

x <- list(a=1:5, b=rnorm(10000))
lapply(x,mean)

x <- list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x,mean)

x <- 1:4
lapply(x,runif, max=15, min=5)
#runif genera valores aleatorios con distr aleatoria

str(apply)
x <- matrix(rnorm(200),20,10) #matriz de 20 filas y 10 columnas
apply(x,2,mean) #el 2 es el margen de las columnas
apply(x,1,sum)

#funciones muy usadas
#rowSyms = apply(x,1,sum)
#rowMeans = apply(x,1,mean)
#colSums/Means = apply(x,2,sum/mean)

x <- matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(.25,.5,.75))

#quantile: dentro de una colección de datos, cuántos son menores que la probabilidad
 
a <- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean)
rowMeans(a,dims=2)

str(mapply)

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
#rep repite elementos
mapply(rep,1:4,4:1)

noise <- function(n,mean,sd){
  rnorm(n,mean,sd)
}
mapply(noise,1:5,1:5,2)


x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
f
tapply(x,f,mean, simplify=F)


#03/10 Manejo de errores

printmsg <- function(x){
  if (is.na(x))
    print("x es un valor faltante")
  else if (x>0)
    print("x es mayor que 0")
  else
    print("x es menor o igual que 0")
  invisible(x)
}

printmsg(NA)

#funciones para depurar
#Traceback
lm(x)
traceback()
#te dice en donde fue el ultimo error

#debug
debug(lm)
lm(y ~ x)
#evalua la funcion tipo vba

options(error=recover)
?options
#options: posibilidad de manejo de errores
read.csv("perritosgay")

#swirl guia de R  
#Hacer captura de pantalla

#structure "str"
str(str)

x <- rnorm(100)
str(x)
summary(x)

z <- matrix(rnorm(100),10,10)
str(z)

s <- split(airquality,airquality$Month)
str(s)

#Generar numeros aleatorios

#pnorm: prob de que una variable aleatoria tome un valor menor o igual a un numero
#rpois: Genera variables aleatorias Poisson con una tasa dada 

x <- rnorm(10)
x
y <- rnorm(10,50,5)
y
summary(x)
summary(y)
#Para tener lo mismo usar set seed
set.seed(1)
rnorm(5)
normal1 <- rnorm(10000)
normal2 <- rnorm(10000,10,5)
hist(normal2) #para graficar un histograma de frecuencias
summary(normal2)

rpois(10,1)
poisson1 <- rpois(10000,10)
hist(poisson1)
summary(poisson1)
ppois(2,2)
hist(rpois(10000,2))

for(i in 0:11) 
  {print(dpois(i,2))}


#modelo lineal

set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- .5+2*x+e
summary(y)
plot(x,y)
z <- 0.5 + 2 * x
plot(x,z)

#muestreo

sample(1:10,4)
sample(letters,5)
sample(1:10,replace=TRUE)

#Perfilaje (profiling)

# system.time()
system.time(readLines("http://www.fcfm.buap.mx"))

hilbert <- function(n){
  i <- 1:n
  1/outer(i-1,i,"+")
  
}
#
x <- hilbert(1000)

?svd
system.time(svd(x))

#Perfilador de R
