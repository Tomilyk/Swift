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

