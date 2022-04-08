import UIKit
import Darwin
//Declaracion general de una funcion
func greeting(person:String) -> String {
    let greet = "¡Bienvenue, \(person)!"
    return greet
}

greeting(person: "Ricardo Celis")
greeting(person: "Edgar")
greeting(person: "Juan Gabriel")

//Parametros de entrada
func sayHelloWorld() -> String {
    return "Hello World"
}

sayHelloWorld()
sayHelloWorld()

func greeting(person: String, isMale: Bool) -> String {
    if(isMale){
        return "Bienvenido Caballero \(person)"
    }else{
        return "Bienvenida Señorita \(person)"
    }
}

greeting(person: "Ricardo Celis", isMale: true)
greeting(person: "Olivia", isMale: false)

//la funcion se ejecuta pero no devuelve valor
func greet2(person:String){
    print("Hola \(person)")
}
greet2(person: "Ricardo Celis")
greet2(person: "Edgar")

//
func printAndCount(string : String) -> Int{
    print(string)
    return string.count
}

func printWithoutCounting(string : String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hola que tal")
printWithoutCounting(string: "hola que tal")
//se agrega el ? para indicar que el return es opcional
func minMax(array:[Int]) -> (min: Int, max: Int)?{
    //devuelve nil en caso de que venga vacio el array
    if array.isEmpty{ return nil }
    
    var currentMin = array[0]
    var currentMax =  array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax =  value
        }
    }
    
    return (currentMin, currentMax)
}
//se forza el casteo agregando ! al final de la variable
let bounds =  minMax(array: [1,2,3,4,5,6,7,8,-1,-3,-8,13])
print("Los valores se hallan entre \(bounds!.min) y \(bounds!.max)")

minMax(array: [])

//Etiquetas de Params y Variadics
func someFunction(f1 firstParamName: Int,f2 secondParamName: Int = 6){
    //firstParamName variable de tipo Int
    //secondParamName variable de tipo Int
    print(firstParamName + secondParamName)
}
someFunction(f1: 5, f2: 1)
someFunction(f1: 3)

func greeting(_ person: String,from hometown: String) -> String {
    return "Hola \(person) un placer que nos visites desde \(hometown)"
}
greeting("Tomás", from: "la CDMX")
//Variadics, cuando no se conoce la cantidad de parametros que van a ingresar
func mean(_ numbers: Double...) -> Double{
    var total : Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

mean(5,5,5,5,5,5)
mean(1.5, 2.7)
mean(1.3,4,5,6.7)

//Parametros tipo inout
let x = 5
func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("El numero ahora vale \(number2)")
}
addOne(number: x)

func swapTwoInts(_ a: inout Int,_ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7
print("some int vale \(someInt) y otherInt vale \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("some int vale \(someInt) y otherInt vale \(otherInt)")

//function types
func addTwoInts(_ a: Int, _ b:Int) -> Int{
    return a+b
}//(Int, Int) -> Int
func multiplyTwoInts(_ a: Int, _ b: Int ) -> Int{
    return a*b
}//(Int, Int) -> Int
func printHW(){
    print("Hello world")
} //() -> void

var mathFunction: (Int, Int) -> Int = multiplyTwoInts
mathFunction(4, 5)

func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int ){
    print("resultado: \(mathFunction(a,b))")
}

printMathResult(multiplyTwoInts, 5, 9)
//Nested Functions
func chooseStepFunc(backward: Bool) -> (Int) -> Int{
        
    func stepForward(_ input: Int) -> Int {
        return input + 1
    }

    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }
    return backward ? stepBackward : stepForward
}

var value = 7
let moveNearZero = chooseStepFunc(backward: value > 0)
while value != 0{
    print("\(value)...")
    value = moveNearZero(value)
}
print("Cero!!")

