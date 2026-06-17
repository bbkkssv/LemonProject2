import UIKit

/*
 -----Switch -----
 lets you compare one value against multiple possible cases and run different code depending on which case matches. Ti is used when you want to check many conditions in a clean, organized way
 
 -- syntax --
 
 switch value {
 case pattern1:
 // code to run in value matches pattern1
 case pattern2:
 // code to run if value matches pattern2
 default:
 //code to run if no cases match
 }
 */

 print("-- switch --")
 
 print("\n-- Number (int) --")
 
 let number = 10
 
 switch number {
 case 1:
    print("One")
 case 2:
    print("Two")
 default:
    print("Other")
 
 }
 
 print("\n-- Number (int)")
let position = 3

switch position {
    
case 1:
    print("You are first 🤗")
case 2:
    print("You came second 🤮")
case 3:
    print("You came third 🤡")
default:
    print("You placed \(position)")
    

}

print("\n-- Text(String), Matching multiple values --")

let grade = "B"

switch grade {
    
case "A", "A+":
    print("Excellent!")
case "B", "B+":
    print("Good Job")
case "C":
    print("You passed")
default:
    print("Try again")
}

print("\n-- Numbers(int), using range --")

let score = 99

switch score {
    
case 90...100:
    print("Grade A")
case 80..<90:
    print("Grade B")
case 70..<80:
    print("Grade C")
default:
    print("Grade F")

}


print("\n-- Boolean (bool) --")

let isVip = true
switch isVip {
case true:
    print("Welcome VIP!")
case false:
    print("Standard guest")

}

/*
 -- Mini Challenge
 
 Create a variable called temperature.
 Use a switch to print:
  "Cold" for (0-59)
 "Warm" for (60-79)
 "Hot" for (80-100)
 "Out of range" for anything else
 
 */

print("\n-- NMini CHallenge --")

let temperature = 68

switch temperature {
    
case 0...59:
    print("Cold")
case 60...79:
    print("Warm")
case 80...100:
    print("Hot")
default:
    print("Out of Range")

}

//Assignment 1

print("\n-- Assignment  1--")

let day = "Sunday"

switch day {

case "Saturday", "Sunday":
    print("Weekend!")
case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
    print("Weekday")
default:
    print("Invalid day")

}



