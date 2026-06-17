import UIKit

/*
----- ARRAYS -----
Ordered collection that stores multiple values of the same type in a single variable.
Values are stored in a specific order.
Each value has an index starting at 0.

-- Syntax --

var/let arrayName = [value1, value2, value3, ...]

*/

print("----- ARRAYS -----")

print("\n-- Basic Array (String) --")
var cohort10 = ["Rafael", "Lemuel", "Michael", "Robert"]
print(cohort10)

print(cohort10[0]) // index starts at 0
print(cohort10[1])
print(cohort10[2])
print(cohort10[3])

print("\n-- Basic Arrays (String) --")
let musicBands:[String] = ["Green day", "GNR", "ACDC", "Scorpions", "Blink182"]
print(musicBands)

/*
-- MINI-CHALLENGE 1 --
Create an array with your top 3 favorite desserts and print them
*/


var desserts:[String] = ["Chocolate", "Cheese Cake", "Ice Cream"]

print(desserts)

/*
-- MINI-CHALLENGE 2 --
Print the total number of desserts
*/

print(desserts.count)

print("\n-- Arrays of numbers (Int) --")
var numbers = [10, 20, 30, 40, 50]
print(numbers)


print("\n-- Array methods (String) --")
var dishes:[String] = ["Pizza", "Pasta", "Soup"]

print(dishes)
print(dishes[1])
print(dishes.count)

print("-- Adding a new dish --")
// push
print("-- Adding a new dish (append) --")
dishes.append("Salad") // Add an item to the end
print("Dishes after pushing Salad \(dishes)")

print("-- Adding a new dish (insert())")
// insert a new dish in position 1 and print the dishes
dishes.insert("Hot Dog", at: 1)
print(dishes)

print("-- Removing a dish (remove())--")
print("Item removed ", dishes.remove(at: 4))
print(dishes)

/*
----- For Loops -----

-- Syntax --
for loopVariable in array {
    // code to repeat
}

*/
print("\n-- Looping through students --")

var students = ["Robert", "Rafael", "Michael", "Lemuel", "Leo"]


for student in students{
    print(student)
}

print("\n-- Looping through a string --")

for letter in "HelloWorld" {
    print(letter)
}

print("\n-- Filtering calories (for loop) --")
let calories = [0, 150, 180]

for calorie in calories {
    if calorie > 100 {
        print(calorie)
    }
}
