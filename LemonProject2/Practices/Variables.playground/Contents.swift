import UIKit

// variables -> var
// constants -> let

var restaurantName = "Little Lemon"
print("Welcome to \(restaurantName)")

restaurantName = "Little Lemon Bistro"
print("Now we are called \(restaurantName)")

// constants cannot change
let city = "Chicago"
//city = "New York" // Error: cannot assign a value to constant
print("Our \(restaurantName) is located in \(city)")

// String
var specialDish = "Pasta Alfredo"
// Integers
var availableTables = 3
// Doubles
var dishPrice = 9.56
// Boolean
var isOpen = true

print("Today's special: \(specialDish) - $\(dishPrice)")

//Mini Challenge 1:
// Create a variable called `numberOfTables` and a constant called `ownerName`.
// Print a sentence like:
// "Little Lemon has 10 tables, owned by Mario."

var numberOfTables = 10
let ownerName = "Mario"
print("Little Lemon has \(numberOfTables) tables, owned by \(ownerName).")



var item = "Big Mac"
//var price = 5.99
var count = 2
var isTerrible = true

//print("(item)\ tastes like garbage =\(isTerrible)")

var anotherDish:String = "Pizza"
var tableCount:Int = 10
var price:Double = 8.99
var openStatus:Bool = false


var pastaPrice = 10.50
var saladPrice = 6.25
var total = pastaPrice + saladPrice
print(total)


var tip:Double = (total * 0.15)
print("Tip = \(tip)")

//Text("\(total,specifier:"%.1f")")
print(String(format:"%.1f",total))
