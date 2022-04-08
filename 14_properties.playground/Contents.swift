import UIKit
import Darwin

//Stored Properties

struct FixedLengthRange {
    var firstValue : Int
    var length : Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//Lazy Stored Properties

class DataImporter{
    var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Algo de datos")
manager.data.append("Muchos más datos")
//Hasta esta linea el importer no ha sido creado
manager
manager.importer.filename
//Aqui, la variable importer ya ha sido creado
manager

//Computed Properties

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point{
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size (width: 10, height: 10))

square.center

let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)

//Computed properties de solo lectura

struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
        return width * height * depth
    }
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)

cuboid.volume
//cuboid.volume = 57.0 error,puesto que la variable solo es de lectura

//Property Observers
//willSet // didSet

class StepCounter{
    var totalSteps: Int = 0{
        willSet(newTotalSteps){
            print("El numero de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue{
                print("El numero de pasos ha incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 520

//Type properties

struct SomeStruct {
    var count = 0
    static var storedTypeProperty = "SOME VALUE"
    static var computedTypeProperty: Int {
        return 1
    }
}

var instanceStr = SomeStruct()
var otherInstaceStr = SomeStruct()

SomeStruct.computedTypeProperty

enum SomeEnum{
    static var storedTypeProperty = "SomeValue"
    static var computedTypeProperty: Int{
        return 5
    }
}

SomeEnum.storedTypeProperty

class SomeClass{
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty:Int{
        return -9
    }
    
    class var overrideableComputedTypeProperty:Int{
        return 108
    }
}

