import UIKit


/*
 ---- CLASS ----
 Reference type used to define a custom model that groups together properties and methods.
 Objects created from a class are a shared by reference, meaning multiple variables can point to the same object in memory.
 
 -- Syntax --
 
 class ClassName {
 var propertyName1: DataType
 var propertyName2: DataType
 
 init(propertyName: DataType, propertyName2: DataType) {
 self.propertyName1 = propertyName1
 self.propertyName2 = propertyName2
 }
 
 func nethodName() {
 // code here
 }
 }
 
 // Create an instance
 let objectName = ClassName(Property1: value, property2:value)
 
 
 */

print("\n-- Class --")

class Car {
    var brand: String
    var speed: Int
    
    // initializer
    init(brand: String, speed: Int) {
        
        self.brand = brand
        self.speed = speed
    }
    
    // func
    func accelerate() {
        speed += 10
    }
}

let myCar = Car(brand: "Honda", speed: 50)
print("Car brand: \(myCar.brand)")
print("Car speed: \(myCar.speed)")

myCar.accelerate()
print("Car Speed after acceleration \(myCar.speed)")

// MARK: -
print("\n-- Class with method Dog --")

class Dog {
    var name: String
    var age: Int
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func bark() {
        print("\(name) says woof!")


    }


}

let dog1 = Dog(name: "Scooby", age: 11)
let dog2 = Dog(name: "Pongo", age: 3)

dog1.bark()
dog2.bark()


// MARK: -
print("\n-- Refenrece Type Behaviour --")

class Weapon {
    var name: String
    var attack: Int
    
    init(name:String, attack: Int) {
        self.name = name
        self.attack = attack
    }
        func upgrade() {
            attack += 10
        }
        
    
    
}

let sharedSword = Weapon(name: "Dragon Sword", attack: 50)

let knightWeapon = sharedSword
let thiefWeapon = sharedSword

print("Knight attack \(knightWeapon.attack)")
print("Thief attack \(thiefWeapon.attack)")

knightWeapon.upgrade()

print("Knight upgraded the sword to \(knightWeapon.attack)") // 60
print("Thief attack after upgrade \(thiefWeapon.attack)") // 60







