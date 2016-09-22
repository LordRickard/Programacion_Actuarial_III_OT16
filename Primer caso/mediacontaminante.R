#Caso 1.


mediacontaminante = function(directorio,contaminante,id=1:332){ 
  
  x <- vector("numeric")
  suma <- 0
  
  for (i in id){ 
    
    if (i<10){ 
      x <- paste("00",i,".csv", sep="") } 
    else { 
      if (i>=10 && i<100){ 
        x <- paste("0",i,".csv", sep="") } 
      else { 
        x <- paste(i,".csv", sep="") } 
    }
    
    y <- read.csv(x)
    z <- c(y[,contaminante])
    medias <- mean(z,na.rm=TRUE)
    suma <- suma + medias
  } 
  prom <- suma/length(id)
  prom
}


mediacontaminante("specdata","sulfate",1:2 )