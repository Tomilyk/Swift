import UIKit
import Darwin
//Ciclo for-in
let names = ["Ricando Celis", "Juan Grabriel", "Edgar"]

for name in names {
    print("Hola \(name)")
}

let numberOfLegs = ["spider":8, "ant":6, "dog":4]

for (animalName, legCount) in numberOfLegs{
    print("Animal: \(animalName), numero de patas \(legCount)")
}

for idx in 1...5{
    print("\(idx) x 3 = \(idx*3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 0..<power{
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tickMark)")
}

//Bucle While

var i = 0
while i <= 10 {
    i += 1
}
print(i)
// repeat es lo equivalente a do while en otros lenguajes
repeat {
    i += 1
} while i <= 10
print(i)

// If y Else
var temp = 25
if temp <= 15{
    print("Hace frio, enciende la calefaccion")
}else if temp >= 25{
    print("Hace Calor, enciende el aire")
}else{
    print("la temp esta perfecta")
}

//Switch Case Default
let someCharacter: Character = "A"

switch someCharacter.uppercased() {
case "A" , "E", "I", "O", "U":
    print("Es una vocal")
case "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z":
    print("Es una consonante")
default:
    print("Es un numero")
}

//Interval matching
let moons = 10000
let phrase = "lunas en Saturno"
let naturalCount : String
switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay unas pocas "
case 5..<12:
    naturalCount = "Hay bastantes "
case 12..<100:
    naturalCount = "Hay decenas de "
case 100..<1000:
    naturalCount = "Hay centenares de "
default:
    naturalCount = "Son un putero de "
}

print("\(naturalCount)\(phrase)")

//Switch con Tuplas
let somePoint = (0,0)

switch somePoint {
case (0,0):
    print("el punto \(somePoint) es el origen de las coordenadas")
case (_,0):
    print("el punto \(somePoint) se encuentra sobre el eje X")
case (0,_):
    print("el punto \(somePoint) se encuentra sobre el eje Y")
case (-2...2,-2...2):
    print("el punto \(somePoint) se halla en el interior del cuadrado de lado 4")
default:
    print("el punto \(somePoint) esta en otro lado")
}

let anotherPoint = (4, -4)

switch anotherPoint {
case (let x,0):
    print("Sobre el eje de las X con el valor \(x)")
case (0,let y):
    print("Sobre el eje de las X con el valor \(y)")
case let (x,y) where x == y:
    print("El punto se halla sobre la recta x = y")
case let (x,y) where x == -y:
    print("El punto se halla sobre la recta x = -y")
case let (x,y):
    print("En algun otro lugar del plano, en (\(x), \(y))")
}

let stillAnotherPoint = (9,0)
switch stillAnotherPoint{

case (let distance, 0), (0, let distance):
    print("Se halla sobre el eje, a distancia \(distance) del origen")
default:
//    print("No esta sobre el eje")
    break
}

//Control Transfer Sentences - continue, break, fallthrough, return, throw

let sentence = "Las mentes grandes piensan igual"
var filterSentence = ""
let charactesToRemove:[Character] = ["a", "e", "i", "o", "u"]
for ch in sentence {
    if charactesToRemove.contains(ch){
        continue
    }
    filterSentence.append(ch)
    if ch == "d"{
        break
    }
}
filterSentence

//fallthrough
let integerToDescribe = 4
var description = "El numero \(integerToDescribe) es"
switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " un numero primo y"
    fallthrough
default:
    description += " un numero entero"
}
print(description)

var people = ["name" : "Juan Gabriel", "age" : 31, "isMale" : true] as [String : Any]

func testUserValidation(person:[String : Any]){
    guard let surname = person["surname"] else {
        print("El apellido es desconocido")
        return
    }
    //aqui existe surname
    print(surname)
    guard let age = person["age"] else {
        print("La edad es desconocida")
        return
    }
    print("La edad de la persona es \(age)")
}
// existe surname
people["surname"] = "Gomila"
testUserValidation(person: people)

if #available(iOS 12,macOS 10.12, *){
    //Ejecutar las acciones a los ios12+, a los macos12+
}else{
    //Mantener el codigo viejo con versiones anteriores de ios, macos..
}

