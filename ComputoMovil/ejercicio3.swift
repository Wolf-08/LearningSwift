/*dada una cadena por el usuario validar si es un numero 
telefonico con la siguiente estructura (nn)-nn-nnnn-nnnn
*/

print("Ingresa un numero telefonico valido (nn)-nn-nnnn-nnnn")
let array = readLine()?.map(String.init)
if let arrayString = array {
    let tam = arrayString.count   
    if (tam > 17) {
        print("no valido")
    }  
    else {
        if(arrayString[0] != "("){
        print("erroe")
        }
        if(arrayString[3] != ")"){
        print("erroe")}


    }
    print(arrayString)
}