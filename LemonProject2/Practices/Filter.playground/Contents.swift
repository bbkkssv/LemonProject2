import UIKit

/*
 ----- FILTER -----
 Array method that creates a new array containing only elements that satisfy a given condition.
 It doesnt modify the original array, it returns a new one.
 Filter keeps only the items that return true
 
 -- Syntax --
 
 collection.filter { $0 condition }
 
 */

print("-- Filter--")

print("\n -- Filter: Numbers (Even) --")
let numbers:[Int] = [1,2,3,4,5,6,7]

//let evenNumbers = numbers.filter {
//    
//    number in
//    return number % 2 == 0
//}
let evenNumbers = numbers.filter { $0 % 2 == 0 }

print(evenNumbers)

// MARK: -

print("\n-- Filter: Numbers (Multiples of 3")


let multiple = numbers.filter { $0 % 3 == 0}

print(multiple)


// MARK: -
print("\n-- Filter: Number (Greater than 5) --")

let values = [2,34,1,41,68,10,3]

let bigValues = values.filter { $0 > 5 }

print(bigValues)

// MARK: -
print("\n-- Filter: Dictionary (name with more than 5 letters)")

let students = [
    "Pam": 31,
    "Lemuel": 73,
    "Rafael": 52,
    "Robert": 38,
    "Michael": 63,
    "Leo": 42
]

let longNames = students.filter { $0.key.count > 5 }
print(longNames)

//let longNames = students.filter { (name,age) in
//    print(name)
//    print(age)
//    return name.count > 5
//}

// MARK: -

print("\n-- Filter: Dictionary (Dishes price < $10) --")

let dishes = [
    "Pizza": 10.50,
    "Pasta": 7.50,
    "Hamburger": 10.99,
    "Hot Dog": 4.99,
    "Buffalo Wings": 13.99
    
]

let lessThanTen = dishes.filter {$0.value < 10 }
print(lessThanTen)

// MARK: -
print("\n -- Filter: String (keep only letters, remove spaces) --")

let word = "Hello Cohort #10"

let onlyLetters = word.filter { $0 != " " }
print(onlyLetters)

// MARK: -

print("\n-- Filter: Array (Items containing 'Salad' or 'Fruit') --")

let vegeterianMenu = [
    "Veggie Salad" , "Steak", "Fruit Bowl", "Cesar Salad"
    ]

let filteredMenu = vegeterianMenu.filter { $0.contains("Salad") || $0.contains("Fruit") }

print(filteredMenu)


// MARK: -

print("\n-- Dictionary: Get Swith Technologies --")

let technologies = [
    "Swift": ["SwiftUI", "Vapor", "UIKit"],
    "Javascript":["Vue.js", "React.js", "Svelte"],
    "Python": ["FastApi", "Flask", "Django"]
    ]
let swiftTech = technologies.filter { $0.key == "Swift" }
print(swiftTech)


