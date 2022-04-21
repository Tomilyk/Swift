import UIKit
//Herencia
class Vehicle {
    //final var currentSpeed = 0.0
    var currentSpeed = 0.0
    var description: String{
        return "viajando a \(currentSpeed) km/h"
    }
    func makeNoise(){
        //do nothing, por que cada vahiculo tiene su propia forma de hacer ruido
        print("ruido defalt")
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

class Bicycle : Vehicle{
    var hasBasket = false
    override func makeNoise() {
        print("rin rin")
    }
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print(bicycle.description)

class Tandem : Bicycle{
    var currentPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentPassengers = 2
tandem.currentSpeed = 22.0
print(tandem.description)

class Train: Vehicle{
    var numberOfWagons = 0
    
    override func makeNoise() {
        print("Choo choo")
    }
}

let train = Train()
train.makeNoise()
tandem.makeNoise()
bicycle.makeNoise()

class Car: Vehicle{
    var gear = 1
    override var description: String{
        return super.description + "en la marcha \(gear)"
    }
}

let car = Car()
car.currentSpeed = 55
car.gear = 3
print(car.description)

class AutomaticCar : Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed/15.00) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 55
print(automatic.description)
