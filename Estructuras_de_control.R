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
