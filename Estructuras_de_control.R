#Estructuras de control
#If, else, for, while, repeat, break, Next, return.

if (<condición>){  ## Instruccions} else if {  # mas instrucciones} else {  #MAS condiciones}

#Secuencia for(i in 1:10) {print(i)}
  
#Ejemplo
  
x <- matrix(1:6,2,3)

  for(i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
      print(x[i,j])
    }
  }

#Ciclo while
count <- 0
while(count<10){
  print(count)
}
#?


#Otro ciclo

z <- 5
while(z>=3 && z<= 10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #caminata aleatoria(?)
    z <- z + 1
  } else {
    z <- z - 1
    }
}
#rbinom(numero de numeros a generar, cuantas veces, probabilidad)

caminata <- vector("numeric")
z <- 5
while(z>=3 && z<= 10){
  print(z)
  caminata <- c(caminata,z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #caminata aleatoria(?)
    z <- z + 0.5
  } else {
    z <- z - 0.5
  }
}
  caminata
plot(caminata, type= "l")
str(caminata)

?plot
m10 <- 0
m2 <- 0
w <- 0
while(w>100) 
  caminata <- vector("numeric")
  z <- 5
  w <- w + 1 
  while(z>=3 && z<= 10) {
    print(z)
    caminata <- c(caminata,z)
    moneda <- rbinom(1,1,0.5)
    if(moneda==1){ #caminata aleatoria(?)
      z <- z + 1
    } else {
      z <- z - 1
    }
  }
  str(caminata)
  
x <- 1

repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}

'-----------------------------------------------------------'
m10 <- 0
m2 <- 0
w <- 0
x <- vector("numeric")
caminata <- vector("numeric")
for(i in 1:100) {
z <- 5
while(z>=3 && z<=10){
  caminata <- c(caminata,z)
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){
    z <- z + 0.5
  } else {
    z <- z - 0.5
  }
}
w <- c(w,z)
    if(z<3) {
      m2 <- m2 +1
    } else {
      m10 <- m10 +1
    }
}
m10
m2


