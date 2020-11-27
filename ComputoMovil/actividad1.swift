struct Alumno {

  let nombre: String?
  let edad: UInt8?
  let promedio: Double?
  let beca: Bool?
}
var ArrayAlumno = [Alumno]()
print("Cantidad de alumnos a registrar: ")
if let alumnosRegistrar = Int(readLine()!){
for _ in 1...alumnosRegistrar{
 
  print("Nombre Alumno: " )
  let nombre = readLine()!
  print("Edad Alumno: ")
  let aux = readLine()!
  let edad = UInt8(aux)
  print("Promedia Alumno: ")
  let aux2 = readLine()!
  let promedio = Double(aux2) 
  print("¿Tiene Beca? 1:Si 2:No ")
  var beca: Bool = true
  let aux3 = readLine()!
  let tieneBeca = UInt8(aux3)
  if tieneBeca == 1 {
   beca=true
  }
  else if tieneBeca == 2{
   beca=false
  }
  let alumno = Alumno(nombre:nombre,edad:edad,promedio:promedio,beca:beca)
  ArrayAlumno.append(alumno) 
} 

let alumnosOrdenados = ArrayAlumno.sorted
{
  var ordenado = false 
  if let primerElemento = $0.nombre, let segElemento = $1.nombre{
    ordenado = primerElemento < segElemento
  }
  return ordenado
}

print("Alumnos Ordenados alfabeticamente")
for alumno in alumnosOrdenados{
    print(alumno.nombre!) 
}
print("Alumnos con Beca: ")
for alumno in alumnosOrdenados{
    if alumno.beca == true {
      print(alumno.nombre!)
    }
}
print("-------------------------------------")
let ordenadosCalificacion = ArrayAlumno.sorted
{
  var ordenadoCal = false
  if let pE = $0.promedio , let sE = $1.promedio{
    ordenadoCal = pE < sE
  }
  return ordenadoCal
}

print("Alumno con calificación mas baja \(ordenadosCalificacion[0].nombre!) : \(ordenadosCalificacion[0].promedio!)")

let ultimoElemento = ordenadosCalificacion.count - 1 
print("Alumno con calificación mas alta \(ordenadosCalificacion[ultimoElemento].nombre!) : \(ordenadosCalificacion[ultimoElemento].promedio!)")
}
