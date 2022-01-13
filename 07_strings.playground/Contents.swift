import UIKit

let someString = "Soy un string cualquiera"

let multiLineString = """
Soy un puto dios del swift,\
me la pelan los de apple\
sin mi no son nada
"""

print(multiLineString)

let wiseWords = "\"la imaginacion es mas importante que el saber\" - Albert Einstein"

print(wiseWords)
/* para caracteres especiales revisar https://en.wikipedia.org/wiki/Basic_Latin_(Unicode_block)*/
let dolarSign = "\u{24} "
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

//inicializacion y mutabilidad
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nada que ver aqui")
} else{
    print("El string tiene un valor")
}

var newSomeString = "Un Caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"
//Las constantes son inmutables
let aString = "JuanGa"
//aString += " y Jose al cuadrado"

var a = "A"
var b = "B"
print("a vale \(a) y b vale \(b)")
b = a
print("a vale \(a) y b vale \(b)")
b = "C"
print("a vale \(a) y b vale \(b)")
a = "D"
print("a vale \(a) y b vale \(b)")

let name = "Tomas Flores 😎"
for character in name{
    print(character)
}
print(name.count)

let exclamationMark : Character = "!"

let nameChars: [Character] = ["T", "o", "m", "á", "s"]
var nameString = String(nameChars)

let compundName = "Tomás " + "Flores"

nameString + String(exclamationMark)

nameString.append(exclamationMark)

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
message.append(exclamationMark)

//Primer Reto
let ownName: [Character] = ["T", "o", "m", "á", "s"]
var ownNameString = String(ownName)
ownNameString.append("🇲🇽")

//Segundo reto
let number = 9

for i in 1...10{
    print("\(number) x \(i): \(number * i)")
}

//Indices de Strings
let greeting = "Hola, ¿Que tal?"
greeting[greeting.startIndex]
//greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for idx in greeting.indices{
    print("\(greeting[idx])", terminator: "")
}

var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome
let range = welcome.index(welcome.endIndex, offsetBy:  -7)..<welcome.endIndex
welcome.removeSubrange(range)
welcome
//substrings
greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]

let newString = String(firstPart)
//Prefijos y Subfijos
let newGreeting = "Hola soy el pokemondongo"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("o")

let collection = [
    "Act 1 Scene 1","Act 1 Scene 2","Act 1 Scene 3",
    "Act 2 Scene 1","Act 2 Scene 2","Act 2 Scene 3",
    "Act 3 Scene 1","Act 3 Scene 2","Act 3 Scene 3"
]

var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 2"){
        act1SceneCount += 1
    }
}

print("El numero de escenas del acto 1 es: \(act1SceneCount)")
//Representaciones Unicode
let ghost = "¡Fantasma! 👻"

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}
