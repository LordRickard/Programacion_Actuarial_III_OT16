completos<-function(directorio,id=1:332){
  j<-vector("numeric")
  n<- vector("numeric")
  x <- vector("numeric")
  suma <- 0
  
  for (i in id){ 
    
    if ((i>=1) && (i<10)){ 
      x <- paste("00",i,".csv", sep="") } 
    else { 
      if (i>=10 && i<100){ 
        x <- paste("0",i,".csv", sep="") } 
      else { 
        x <- paste(i,".csv", sep="") } 
    }
    y<-read.csv(x)
    completos<-complete.cases(y)
    j<-completos[completos==TRUE]
    z<-length(j)
    n<-c(n,z)
  }
  resultado <- data.frame(id=id,nobs=n)
  resultado
}
completos("specdata")