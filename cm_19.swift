/*
Session 19 
*/

class Alumno {
var age: Int

init?(age: Int){

    if age < 18 {
        self.age = age 
    }
    else{
        return nil
    }
}
}

//Fuera del if el alumno ya no existe 
// if let armando = Alumno(age: 17){
//     print("Se creo el Alumno Armando")
// }else{
//     print("No se pudo crear el alumno armando")
// }

// El guard se utiliza cuando queremos saber si se quiere validar

guard let armando = Alumno(age: 15)else{
    fatalError("No se pudo crear el alumno Armando")
}

//Modelo vista - vista modelo 