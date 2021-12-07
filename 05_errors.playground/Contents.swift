import UIKit

func canThrowError() throws{
    //aquí hay codigo que puede causar un error
}


do{
    try canThrowError()
    //si llegamos aquí, no ha habido error
}catch{
    //si llegamos aquí, ha habido un error...
}



// Reto
//Variables
var cleanDishes: Bool = true
var ingredients: Bool = false
var hungry: Bool = false
//enum para enumerar errores
enum sandwichError: Error{
    case noCleanDishes
    case noIngredients
    case noHungry
}
//declaracion de la funcion
func makeASandwich() throws{
    if cleanDishes == false {
        throw sandwichError.noCleanDishes
    }
    if ingredients == false {
        throw sandwichError.noIngredients
    }
    if hungry == false {
        throw sandwichError.noHungry
    }
    print("Preparar Sandwich")
}

//Llamado de la funcion
do{
    try makeASandwich()
    print("Me como el sandwich")
}catch(sandwichError.noCleanDishes){
    print("lava 1 plato")
}catch (sandwichError.noIngredients){
    print("compra ingredientes")
}catch (sandwichError.noHungry){
    print("Esperar a tener hambre")
}

//aserciones(debug) y precondiciones(build)

let age = -5
//assert(age>=0, "La edad no puede ser negativa")
//precondition(age>=0, "La edad no puede ser negativa")
//... aqui el codigo sigue

if age > 10 {
    print("puedes subir la montaña rusa")
}else if age >= 0{
    print("Eres muy pequeño para subirte a la montaña rusa")
}else{
    assertionFailure("la edad no puede ser negativa")
}
