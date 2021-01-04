/*
Dado un arreglo de numeros enteros, regresar un nuevo arreglo
tal que cada elemento en la posicion "i" ejemplo 
[1,2,3,4,5] --> [120,60,40,30,24]
*/
import Foundation 

func readArray(){
    var array = [Int]() 
    print("Ingresa el tamaño del arreglo")
    if let size = Int(readLine()!){
    print("Ingresa el arreglo que quieras multiplicar")
    for i in 1...size{
        print("Ingresa el elemeno \(i)")
        if let elemento = Int (readLine()!){
        array.append(elemento)
        }
    }
    }
    else{
        print("No ingresaste un valor para el arreglo")
    }
    MulArray(array: array)
}
func MulArray(array: [Int]){
    var mul = 1
    var newArray = [Int]()
    let size = array.count
    //Haciendo el array variable 
    var arrayAux = array

    for element in 0..<size{
        var auxElement = arrayAux.remove(at: element)
        //print("Elemtno removido \(auxElement)")
        for value in 1...arrayAux.count{
            mul = mul * arrayAux[value-1]
        }
        newArray.append(mul) 
        arrayAux.insert(auxElement,at: element)
        mul = 1
    }
    print(arrayAux)
    print(newArray)
}

readArray()