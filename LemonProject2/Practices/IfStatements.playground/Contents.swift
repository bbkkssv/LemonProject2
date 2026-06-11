import UIKit

// IF - ELSE-IF - ELSE
/*
|---- SYNTAX ----|

if condition1 {
    this block runs if condition1 is true
}else if condition2 {
    this block runs if condition 1 is false
        and condition2 is true
}else{
    this block runs if none of the above
        conditions are true
}
*/

// |---- Example 1 ----|
var guests:Int = 7
let capacity:Int = 10

if guests > capacity{
    print("Over capacity!")
}else{
    print("We can seat this party!")
}

// |---- Example 2 ----|
let rating = 3.2

if rating >= 4.5 {
    print("Excellent")
}else if rating >= 3.5{
    print("Good")
}else{
    print("Needs improvement")
}

// |---- Example 3: Bool operators ----|
let isOpen = true
let hasOutdoorSeating = true

if isOpen && hasOutdoorSeating {
    print("Open with outdoor seating")
}else if isOpen && !hasOutdoorSeating {
    print("Open indoor only.")
}else{
    print("Closed")
}
// |---- Example 5: Ternary ----|
let price = 2.0
let label = price > 10 ? "Premium" : "Regular"
print(label)


// |---- Minichallenge 1: ----|
// if we have groups larger than 8; the clients
//     need to call the manager.
// if the group has children, offer the kids menu
// no children and less than 8 display Standar
//     seating
let groupSize = 6
let hasChildren = true

if groupSize > 8 {
    print("Please call the manager.")
} else if hasChildren {
    print("Here is the kids menu.")
} else {
    print("Standard seating.")
}

/*
|------- Minichallenge 2------- |
Show one message if user is VIP, and another if
    not.
*/
let isVIP = true

if isVIP {
    print("Welcome back, valued VIP guest!")
} else {
    print("Welcome, enjoy your visit!")
}
