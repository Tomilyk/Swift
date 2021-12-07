import UIKit
//Booleanos
let orangesAreOrange = true
let foodIsDelicius = false

var isAged : Bool

isAged = true

if isAged {//entramos aqui solo si isAged == true
    print("Puedes entrar en la fiesta")
}else{//Solo entramos aqui si isAged == false
    print("No puedes pasar a la fiesta")
}

var age:Int = 31

if age >= 18{
    print("Puedes entrar en la fiesta")
}

//TUPLAS
let http404Error = (404, "Pagina no encontrada")
let (statusCode, statusMessage) = http404Error
print("El codigo del estado es \(statusCode)")
print("El mensaje del servidor es: \(statusMessage)")

let (justStatusCode, _) = http404Error
print("El codigo del estado es \(justStatusCode)")

print("El codigo de error es \(http404Error.0) y el mensaje es \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("El codigo del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

//Optionals y Nil
let possibleAge = "31"
let convertedAge = Int(possibleAge) //Int?

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer : String?
surveyAnswer = "42"

//Force unwrapping de una variable opcional
if convertedAge != nil{
    print("La edad del usuario no es nula: \(convertedAge!)")
}else{
    print("La edad del usuario es nula")
}

//Optional Binding
if let actualAnswer = surveyAnswer{
    //Las constantes siempre tienen un valor
    //Al llegar aqui, surveyAnswer != nil
    print("El String \(surveyAnswer) tiene el valor \(actualAnswer)")
}else{
    //Al llegar aqui, surveyAnswer == nil
    print("El String \(surveyAnswer)) es nulo")
}

if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber<100{
    print("\(firstNumber) < \(secondNumber) < 100")
}

//Unwrap Implicito
let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!

let assummedString: String! = "Un string unwrapped de forma implicita a partir de un optional"
let implicitString: String = assummedString

if assummedString != nil{
    print(assummedString!)
}

if let definitiveString = assummedString {
    print(definitiveString)
}

print(assummedString)
print(implicitString)

