import UIKit

/*
Swift en su mayor parte es C asicionan como tal
*/

var str = "Hello, playground"

/*
 Para declarar esta variable se le puede asignar un valor
 y swift sabra de que tipo es pero si no se le asigna nada
 Se le pone el tipo de dato que es para que no marque errores
 */
var welcomeMessage: String

welcomeMessage = "Hello"
//Formato para crear variables en una sola linea
var red, green, blue: Double
//camelCaseParaNombrarVariables

let π = 3.1416
let 🦊 = "vixen"

print("El valor de pi :\(welcomeMessage)")
//Comentarios en swfit

/*
 Esta cosa puede tener comentarios entre comentarios
 /*
    Comentarios anidados wooooow
 */
 
*/


//Por defecto swift crea un entero de 64 bits
let age = 31
let minValue = UInt8.min  //Valor minimo de 8 bits 0
let maxValue = UInt8.max // valor maximo de 8 bits 255
let minValue16 = UInt16.min // 2 a la 0 -1
let maxValue16 = UInt16.max // 2 a la 16 -2 = 65536
let minValue32 = UInt32.min
let maxValue32 = UInt32.max
let minValue64 = UInt64.min
let maxValue64 = UInt64.max


//Formas de escribir numero

let paddedDouble = 000097.54
let oneMillon = 1_000_000 //Sigue siendo un millon
let justMoreThanOneMillon = 1_000_000.000_1
/*
let tooBig : UInt8 = UInt8.max + 1 //Overflow
*/

//Optimizaciòn de memoria

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
//Un enttero y un double no se pueeden sumar
/*Haciendo casteo para la optimizaciòn de memoria
Se pasa de 8 bits a 16 para que quepa la suma y no se desperdicie mucho
 memoria, no se debe pasar a 64 bits
 */
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.14159 //Double
let piNum = Double(three) + decimalNumber

//Alias

typealias maxAmplitud =  UInt8 //Es un alias para definir un tipo de variable
//Para mejores actualizaciones codigo   mas legible

//TUPPLAS

let http404Error = (404,"Pagina no encontrada")
//Se extrae la tupla en diferentes mensajes
let (statusCode,statusMessage) = http404Error
print("El codigo de error es  \(statusCode)")
print("El mensaje de error es \(statusMessage)")

//Solo guardar un valo: Se puede usar _ para "ignorar" una varibal e
let (justStatusCode, _ ) = http404Error
print("El codigo de error es \(justStatusCode)")

//Las tuplas son como diccionarios en python parecidos pero con mas aplicaciones
//Combina tuplas y diccionarios en Python

//Example Se pueden acceder a la tupla por su indice
//Pero tambien se puedde declarar asi

let kira = (name: "kira", edad: 27)
print("Nombre del perro es \(kira.name) y su edad es \(kira.edad)")


//Optionals and NIL
//El valor puede estar o no estar.
//La ausencia de valor.
let posibleAge = "31"
//Se va castear de String a numero entero

let convertdAge = Int (posibleAge) // Int?
//El cast puede fallar porque puede que no sea entero si se manda una cadena
//let posibleAge= "paco" si se declara asi devuelve un nil

var serverResponseCode : Int? = 404
serverResponseCode = nil


var surveryanswer : String?
surveryanswer = "Respuesta" //Poniendole valor ya lo escribi como un opcional
print(surveryanswer) //Imprime nil

















