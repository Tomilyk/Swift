import UIKit
import CoreFoundation

//1. Global functions
//2. Nested functions
//3. Closure

let names = ["Christian", "Ricardo", "Juan Gabriel", "Edgar", "Freddy"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
backward("Juan Gabriel","Edgar")

var reversedNames = names.sorted(by: backward)

/*
 { (parms) -> return type in
    //codigo del closure
 }
 */

reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1>s2 })
reversedNames = names.sorted(by: {s1, s2 in return s1>s2})
reversedNames = names.sorted(by: {s1, s2 in s1>s2})
reversedNames = names.sorted(by: {$0>$1})
reversedNames = names.sorted(by: >)

//Trailing Closures
func someFunctionThatTakesAClosure(closure: () -> Void){
    //Aqui iria el cuerpo de la funcion
}

someFunctionThatTakesAClosure (closure: {
    //Aqui iria el cuerpo del closure
})

someFunctionThatTakesAClosure {
    //Añadir el closure aqui
}

reversedNames = names.sorted {$0>$1}

let digitNames = [0:"cero", 1:"uno", 2:"dos", 3:"tres", 4:"cuatro", 5:"cinco", 6:"seis", 7:"siete", 8:"ocho", 9:"nueve"]
let numbers = [16, 58, 510, 2127]

let numberStrings = numbers.map { (number) -> String in
    
    var number = number //reconvirtiendo constante a variable
    var output = ""
    
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    }while number > 0
            return output
}

//Capturar Valores
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()

//Escaping Closure
var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
completionHandlers.count

func someFunctionWithNonEscapingClosure(closure: () -> Void){
    closure()
}

class someClass{
    var x = 10
    func doSomething(){
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        someFunctionWithNonEscapingClosure {
            x = 200
        }
    }
}

let instance = someClass()
print(instance.x)
instance.doSomething()
print(instance.x)

completionHandlers.count
completionHandlers.first?()
print(instance.x)


