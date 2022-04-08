import UIKit

//Array
//Conjuntos
//Diccionarios

//Array
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []
someInts.count

//inicializacion
var someDoubles = Array(repeating: 3.141592, count: 7)
someDoubles.count

//otra forma de inicializar
var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList : [String] = ["Papas", "Pimiento", "Tortilla", "Cerdo", "Cebolla"]
shoppingList.count

if shoppingList.isEmpty{
    print("La lista de compra está vacía")
}else{
    print("Mandemos a Ricardo a comprar")
}

shoppingList.append("Coca Cola")
shoppingList.count

shoppingList += ["Totopos", "Guacamole", "Pico de gallo"]
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Plátano", "Mango"]
shoppingList

//Eliminar
let pepper = shoppingList.remove(at: 1)
shoppingList

let _ = shoppingList.removeLast()
shoppingList

//Iteraciones
for item in shoppingList{
    print(item)
}

for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx+1): \(item) ")
}

//Conjuntos
var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")
letters

var favoriteGames : Set<String> = ["Final Fantasy", "World of warcraft", "Farcry"]
//var favoriteGames : Set<String> = []
favoriteGames.count

if favoriteGames.isEmpty{
    print("No hay juegos favoritos")
}
favoriteGames.insert("Metal Gear")

//para eliminar algo de un conjunto
if let removedGame = favoriteGames.remove("Farcry"){
    print("He eleminado de la lista \(removedGame)")
}

if favoriteGames.contains("Metal Gear"){
    print("Me encanta ese juego")
}

for vg in favoriteGames.sorted() { //sorted para ordenar la lista
    print(vg)
}

//iteraciones y operaciones sobre conjuntos
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

//A union B = elementos que son o bien de A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted()
//A interseccion B = elementos que son a la vez A y de B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

//A - B = elementos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

//Diferencia simetrica A + B = (A-B) union (B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals: Set = ["🐕","🐈"]
let farmAnimals: Set = ["🐄","🐓","🐑","🐕","🐈"]
let cityAnimals: Set = ["🐀","🕊"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

//Diccionarios [k1:v1, k2:v2, ...]

var namesOfIntegers = [Int : String]()
namesOfIntegers[15] = "quince"
//para borrar el diccionario
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca"
]

airports.count

airports.isEmpty
airports["LHR"] = "London City Airport"
airports
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El nombre anterior del aeropuerto era: \(oldValue)")
}
airports

if let airportName = airports["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}

airports["PMI"] = nil
airports

if let removedAirport = airports.removeValue(forKey: "DUB"){
    //usar la variable removedAirport
}
airports

//iteracion en diccionarios

for (key, value) in airports {
    print("\(key) - \(value)")
}

for airportKey in airports.keys {
    print(airportKey)
}
        
for airportName in airports.values{
    print(airportName)
}

let airportKeys = [String](airports.keys.sorted())
let airportNames = [String](airports.values.sorted())
