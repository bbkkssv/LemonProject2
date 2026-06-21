import UIKit

/*
 ----- DICTIONARIES -----
 unordered collection that stores key-value pairs
 each key must be unique
 
 var/let dictionaryName = [
    key1: value1,
    key2: value2,
 
 ]
 
 */

print("----- Dictionaries -----")

print("\n-- String Values--")
let studentInformation = [
    "firstName": "Robert",
    "lastName": "Vinson",
    "cohort": "10",
    "email": "robert.vinson@sdgku.edu"
]
print(studentInformation)
print(studentInformation["firstName"]!)
print(studentInformation["lastName"] ?? "Not found")
print(studentInformation["lastName"]!)
print(studentInformation["cohort"]!)
print("Cohort: \(studentInformation["cohort"]!)")
print(studentInformation["email"]!)

print("\n-- Looping through student")

for (key, value) in studentInformation {
    print(key)
}

for (key, value) in studentInformation {
    print("\(key): \(value)")
}

print("\n-- Looping through studentInformation (forEach) --")
studentInformation.forEach { key, value in
    print("\(key): \(value)")
}


print("\n-- String values --")
let courseInformation = [
    "courseName": "iOS Development",
    "courseCode": "MDI102",
    "schedule": "Mon-Thu 5PM"
]

print(courseInformation["courseCode"]!)
print(courseInformation["courseName"] ?? "Not found")
print(courseInformation["courseCode"] ?? "Not found")
print(courseInformation["schedule"] ?? "Not found")

print("-- Looping through courseInformation (for loop) --")
for (key, value) in courseInformation {
    print("\(key) = \(value)")
}
print("-- Looping through courseInformation (forEach) --")
courseInformation.forEach { (key, value) in
    print("\(key) = \(value)")
}

print("\n-- Int value --")
var servingsAvailable = [
    "Pizza": 12,
    "Pasta": 7,
    "Salad": 8
]

print("Servings Available: \(servingsAvailable)")

print("-- Add a new item --")
servingsAvailable["Soup"] = 4

print(servingsAvailable)

print("-- update an existing item --")

servingsAvailable["Pizza"] = 10

print(servingsAvailable)

print("\n-- Remove an existing item --")

servingsAvailable["Soup"] = nil


print(servingsAvailable)

print("Today we have \(servingsAvailable.count) dishes in stock")

print("-- Get all keys --")
print(servingsAvailable.keys) // Get keys

print("-- Get all values --")
print(servingsAvailable.values) // Get values

print("-- Remove all items --")
servingsAvailable.removeAll()
print(servingsAvailable)

print("\n-- Doubles --")
var dishPrices = [
    "Pizza": 12.99,
    "Pasta": 10.50,
    "Salad": 6.99
]
print(dishPrices)
print(dishPrices["Pasta"]
??  0.00)

// type()
let name = 9.00
print(type(of: "testing"))


print("\n- Bool values --") // true | false
let availability = [
    "Pizza": true,
    "Pasta": false,
    "Salad": true
]
print(availability)

print("-- Looping through availability (for loop) --")
for (key, value) in availability {
    print("\(key): \(value==true ? "Available" : "Sold out")") // ternary operator
}

print("-- Looping through availability (forEach) --")
availability.forEach { (key, value) in
    if value == true {
        print("\(key) - Available")
    } else {
        print("\(key) - Sold Out")
    }
}


/*
 Mini Challenge

 Start with this dictionary:
 var ingredients = [
    "Tomato": 888,
    "Cheese": 16,
    "Garlic": 6,
    "Potato": 12,
    "Mushroom": 10,
    "Spinach: 2
 ]

 1. Add/update the new ingredientes the manager brought
    8 onions
    24 carrots
    12 lettuces
    3 Spinach

 2. Fix the mistakes
    - Tomatoes where incorrectly counted as 888, but the correct amount is 88.
    - Cheese packages were incorrectly counted, there are 0 packages.

 3. After one working day, print a full report
    - Show each ingredient and its amount

 */
print("\n-- Mini Challenge Daily ingredients report--")


var ingredients = [
   "Tomato": 888,
   "Cheese": 16,
   "Garlic": 6,
   "Potato": 12,
   "Mushroom": 10,
   "Spinach": 2
]


ingredients["Onions"] = 8
ingredients["Carrots"] = 24
ingredients["lettuces"] = 12
ingredients["Spinach"]! += 3
//ingredients["Spinach"] = 3


print(ingredients)

ingredients["Tomato"] = 88
ingredients["Cheese"] = 0




print("\n-- Full ingredients report --")
for (ingredient, amount) in ingredients {
    print("\(ingredient): \(amount)")
}


print("\n-- Dictionary with array values (Menu categories)--")

let menuCategories = [
    "Drink": ["Soda", "Coffee", "Tea", "Wine"],
    "Appetizers": ["Soup", "Salad", "Garlic Bread"],
    "Main Courses": ["Pizza", "Pasta", "Steak", "Fish"],
    "Desserts": ["Ice Cream", "Cake"]
]

print(menuCategories)

print("\n Looping through menuCategories")
for (category, items) in menuCategories {
    print(category)
    for item in items{
        print("- \(item)")
    }
}

print("\n-- Looping through nemuCategories (forEach)--")

menuCategories.forEach { entry in
    print(entry.key)
    entry.value.forEach { item in
        print("- \(item)")
    }
}


/*
 -- Mini Challenge "School subjects and topics" --

 1. Create a dictionary called "schoolSubjects"
    - A subject is the key, and the vaue is an array of topics

 2. Add at least 3 subjects
    - Examples: Math, Science, Programming, Art ...

 3. Each subject must have at least 3 topics
    - Examples:
        Math > Algebra, Geometry, Fractions
        Programming > Loops, Arrays, Dictionaries

 4. Render all the subjects with their topics

 5. Render your favorite subject with its topics

 */

print("\n-- Mini Challenge: School subjects and topics --")

let schoolSubjects = [
    "Submarine Warfare": ["Approach and Attack", "Weapons Systems", "Nuclear Reactor Fundementals"],
    "Computer Science": ["Loops", "Algorithms", "Data Structures"],
    "Physics": ["Kinematics", "Thermo", "Electricity"],
    "Underwater Basket Weaving": ["Snorkeling", "Deep water weaving", "Upside down weaving"]
]

print("\n-- All subjects with their topics --")
for (subject, topics) in schoolSubjects {
    print(subject)
    for topic in topics {
        print("*** \(topic) ***")
    }
}

print("\n-- Favorite subject: Submarine Warfare --")
print("Submarine Warfare")
for topic in schoolSubjects["Submarine Warfare"]! {
    print("Firing point procedures, master 1, tube 1 primary, tube 2 backup!! Fire, master 1*** \(topic) ***")
}



