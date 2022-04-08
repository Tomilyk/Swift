import UIKit
//clases y Estructuras:  almacenan propiedades, definir metodos, subindices, inicializadores o constructores, pueden ser extendidas con funcionalidades de implementacion a futuro, se pueden conformar a protocolos.
//clase: Tiene herencia, casting, desinicializador, el reference countin permite localizar cuantos fragmentos de codigo estan usando una variable
//Estructura

struct SomeStruct {
    //La definicion de la estructura aquí
}

class SomeClass {
    //La definicion de la clase aqui
}
//stored porperties forman parte de la estructura o clase
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var framerate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)

someVideoMode.resolution.width = 1080
print(someVideoMode.resolution.width)

someVideoMode.framerate = 60.0
print(someVideoMode.framerate)

//Estructuras: Datos copiados por valor
//struct = copias, tienen su propio espacio de memoria
//class = referencias, apuntan a un espacio de memoria

let vga = Resolution(width: 640, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")

print("\(hd.width) x \(hd.height)")

enum CompassPoint{
    case north, south, east, west
}

var currentDirection = CompassPoint.north
var oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)

//Clases: datos referenciados

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.framerate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.framerate = 30.0

if tenEighty === alsoTenEighty{ //!==
    print("Son el mismo objeto")
}else{
    print("Son diferentes")
}
