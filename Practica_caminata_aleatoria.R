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