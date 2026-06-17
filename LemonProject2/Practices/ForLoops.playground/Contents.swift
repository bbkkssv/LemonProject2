import UIKit

/*
 -----FOR LOOP -----
 A for loop repeats a block of code specific number of times
 It is commonly used to go through a sequence such as a range of numbers, an array, or any collection
 
 -- Syntax --
 for item in sequence {
 
 }
 
 */

print("-- FOR LOOP ---")
print("\n-- Using range --")
for number in 1...5 {
    print("Round \(number)")
}

print("\n-- From 0 to a number --")

for item in 0..<4 {
    print("Item: \(item)")
}

print("\n-- Loop without using the loop variable --)")
for _ in 1...3 {
    print ("Welcome to the restaurant!")
}

print("\n-- loop to build a string --")
var stars = ""

for _ in 1...5 {
        stars += "⭐️"
}
print(stars)
print("\n-- Loop to simulate account down --")

for seconds in (1...5).reversed() {
    print("Countdown \(seconds)")
}

print("\n-- Stride(), jump by 2 --")

for number in stride(from:1, to:11, by:2) {
    print(number)
}

print("\n-- Stride(), jump by 2, include end value --")

for number in stride(from:1, through:11, by: 2){
    print(number)
}

print("\n-- Stride(), jump backwards --")
for number  in stride(from:10, through: 0, by:-2){
    print(number)
}

/*
 -- Mini CHallenge 1
 
 Use a for loop to create a countdown that goes:
 15, 12, 9, 6,3
 useStride() to step backwards.
 
 
 
 */
print("\n-- mini challenge")

for number in stride(from:15, to: 0, by:-3){
    print(number)
}


/*
 -- Mini Challenge 2 --
 
 use a for loop to build a tree made of "🌲"
 each line should add one more tree than the previous line
 */

var tree = ""

for _ in 1...5 {
        tree += "🌲"
    print(tree)
}







