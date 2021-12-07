import UIKit
import Foundation //Libreria para redondear decimales

//ejemplos con numeros enteros
let age : UInt8 = 31
//UInt: enteros sin signo
let minValueUInt = UInt8.min //2^0-1
let maxValueUInt = UInt8.max //2^8-1
//Int: enteros con signo
let minValueInt = Int8.min
let maxValueInt = Int8.max
//Float: permite solo 6 decimales
let f1 : Float = 3.14159265 //solo mostrara 6 digitos redondeados
//Double: muestra hasta 15 o 16 cifras
let d1 : Double = 3.14159265 //se usa para mas presicion decimal

let meaninfOfLife = 42 //Int
let pi = 3.14159 //Double
let anotherPi = 3 + 0.14159 //Double
//Literales numericos
let decimalInteger = 17  // 1*10 + 7
let binaryInteger = 0b10001 //1*2^4+0*2^3+0*2^2+0*2^1+1*2^0
let octalInteger = 0o21 //2*8^1+1*8^0
let hexadecimalInteger = 0x11 //1*16^1+1*16^0

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

//Formas de escribir numeros
let paddedDouble = 000123.456
let someNumber = 00000097.540

let oneMillion = 1_000_000
let justMoreThanMilllion = 1_000_000.000_000_1

//ERRORES DE TIPO DE DATO
//let cannotBeNegative: UInt8 = -1
//let tooBig : UInt8 = UInt8.max + 1

//Casting
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.141509
let piNum = Double(three) + decimalNumber

let integerPi = Int(piNum)

let rounded : Float = 13.8
round(rounded) //Redondea los decimales

//Forma para apodar tipos de datos
typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max //UInt16.max
