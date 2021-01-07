  //Algoritmo 2 a la N donde N es un numero entero mayor 
  //o igual a cero el algoritmo debe ser exclusivamente recursividad 

  func potencia(value: Int) -> Int {
      
    let base = 2
    var pot:Int 
    if (value == 0) {
        pot = 1
    } else if (value > 0) { 
        pot = base * potencia(value: value - 1) 
    } else {
        pot = 0
    }

    return pot 
  }// Potencia de un numero 


  let resultado = potencia(value : 1)
  print(resultado)