/*Montecillo Sandoval Jose Alejandro 
Computo Movil Actividad 1
-Lista ordenada por nombre 
-Lista ordenada por nombre y si tiene beca
-Alumno con calificacion mayo 
-Alumno con menor calificaciòn
*/
struct Alumno {
  let nombre: String?
  let edad: UInt8?
  let promedio: Double?
  let beca: Bool?
}

func resgitrarAlumnos(alumnosRegistrar: Int) -> ([Alumno], [Alumno]){
  var ArrayAlumno = [Alumno]()
  for index in 1...alumnosRegistrar{
    print("Datos alumno: ",index)
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
      beca=true }
    else if tieneBeca == 2{
      beca=false }

    let alumno = Alumno(nombre:nombre,edad:edad,promedio:promedio,beca:beca)
    ArrayAlumno.append(alumno) }

    let alumnosOrdenados = ArrayAlumno.sorted{
    $0.nombre! < $1.nombre! }
    let ordenadosCalificacion = ArrayAlumno.sorted{
    $0.promedio! < $1.promedio! }

  return (alumnosOrdenados,ordenadosCalificacion)
}

func imprimirAlumnos(alumnosOrdenados: [Alumno]){
  print("Alumnos Ordenados alfabeticamente")
  for alumno in alumnosOrdenados{
  print(alumno.nombre!) }
}

func alumnosBeca (alumnosOrdenados: [Alumno]) {
  print("Alumnos con Beca: ")
  for alumno in alumnosOrdenados{
    if alumno.beca == true {
      print(alumno.nombre!)} }
}

func imprimirCalificaciones(ordenadosCalificacion: [Alumno]){
  print("Alumno con calificación mas baja \(ordenadosCalificacion[0].nombre!) : \(ordenadosCalificacion[0].promedio!)")
  let ultimoElemento = ordenadosCalificacion.count - 1 
  print("Alumno con calificación mas alta \(ordenadosCalificacion[ultimoElemento].nombre!) : \(ordenadosCalificacion[ultimoElemento].promedio!)")
}

func main() {
  print("Programa para registro de Alumnos:\n")
  print("Cantidad de alumnos a registrar: ")
  if let alumnosRegistrar = Int(readLine()!){
     let ordenados = resgitrarAlumnos(alumnosRegistrar:alumnosRegistrar)
    print("Se resgistraron \(alumnosRegistrar) alumnos correctamente\n") 
    print("¿Que datos quieres visualizar?\n")
    print("Lista de Alumnos Ordenada Alfabeticamente (1)\n")
    print("Lista de Alumnos con Beca Ordenada Alfabeticamente  (2)\n")
    print("Almunno con menor y mayor Calificación (3)\n")
    print("Salir (4)\n")

  while let opcion = Int(readLine()!) {
    guard opcion != 4 else {
      break
    }
   switch opcion {
    
    case 1:
      imprimirAlumnos(alumnosOrdenados: ordenados.0)
    
    case 2:
      alumnosBeca(alumnosOrdenados: ordenados.0)
    
    case 3:
      imprimirCalificaciones(ordenadosCalificacion: ordenados.1)
   default: break
   }
    
    print("¿Que datos quieres visualizar?\n")
    print("Lista de Alumnos Ordenada Alfabeticamente (1)\n")
    print("Lista de Alumnos con Beca Ordenada Alfabeticamente  (2)\n")
    print("Almunno con menor y mayor Calificación (3)\n")
    print("Salir (4)\n")
  }
}else{
  print("No se ingreso un numero alumnos a registrar") }
}

//Funcion pincipal 
main()

