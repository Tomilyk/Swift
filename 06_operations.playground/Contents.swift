import UIKit

//= -> sirve para asignar un valor, == -> sirve para comparar
let b = 10
var a = 5
a = b

let (x,y) = (1,2)

if a == b {
    print("Los valores de a y b son iguales")
}

1+2
5-3
2*3
10.0/2.5
"Hello " + "World"

//D/d -> D == d*c+1
9/4//cociente
9%4//resto

9 == 4*2+1

-9%4 // -9 == 4*-2 + (-1)

//operador unario
let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 //number = number + 3
number -= 2 //number = numer -2

//Comparaciones
1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Juan Camaney"

if name == "Juan Gabriel"{
    print("Pasale compita: \(name)")
}else{
    print("Sacate alv impostor: \(name)")
}

(1,"Juan Gabriel") < (2,"Tomas Flores")
(2,"Juan Gabriel") < (2,"Tomas Flores")
(2,"Juan Gabriel") > (2,"Tomas Flores")
(4,"perro") == (4,"perro")
("perro", false) == ("perro", true) //Booleanos solo se puede comparar con == o !=, no existe orden

//Operador ternario
/*
 if question {
    answer
 } else{
    answer2
 }
*/

let contentHeight = 40
var hasImage = false
var rowHeight = 0

/*if hasImage{
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 10
}*/

rowHeight = contentHeight + (hasImage ?50:10)

//Operador Nil Coalescing

let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge
//ageToBeUsed = (userAge != nil? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String? = "green"

var colorNameToUse = userColorName ?? defaultColorName

//Rangos
for idx in 1...5{
    print(idx)
}

//Rango semiabierto
for idx in 1..<5{
    print(idx)
}

let names = ["Tom", "Moy", "Alex"]
for i in 0..<names.count{
    print("la persona \(i+1) se llama \(names[i])")
}
//Rango abierto
for name in names[0...]{
    print("aqui: ", name)
}

for name in names[...2]{
    print(name)
}

let range = ...5 // -infinity ... 5
range.contains(7)
range.contains(4)
range.contains(-2)

//Operadores Logicos
let allowEntry = false

if !allowEntry{ //se le agrega ! para negar
    print("Abrete chavo!")
}

let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan{//AND
    print("Pasele mi Lord")
}else{
    print("Que te abras alv!")
}

let hasMoney = false
let hasInvitation = false

if hasMoney || hasInvitation{ //OR
    print("Bienvenido a la fiesta!")
} else{
    print("Sacate alv prro!")
}

if (enterDoorCode && passRetinaScan) ||
    hasMoney || hasInvitation {
    print("Pasale mi rey")
} else{
    print("voy a llamar a la policia")
}
