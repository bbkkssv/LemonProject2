import UIKit

//Functions
/*
 Syntax
 func functionName(param1:Type,param2:Type) ->
     ReturnType {
     //body of the function
     //logic goes here

     return value
 }
 */

// Example 1
func printWelcome(){
    print("Hello cohort #10")
}

printWelcome()

//Example 2 with 1 parameter

func greet(person:String) -> String {
    let greetings = "Hello " + person + "!"
    return greetings
}

let message = greet(person:"Sam")
print(message)

//Example 3 - with 2 parameters
func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

let result = add(number1:255, number2:664)
print("The addition is: \(result)")

//Example number 4- with unamed parameters
func multiply(_ x: Int, _ y: Int) -> Int {
    return x*y
}
print(multiply(3,5))

func welcomeStudent(name: String) -> String {
        "Welcome, \(name), Ready to learn Swift?"
}
let message1 = welcomeStudent(name: "Bob")
print(message1)

func deliveryStatus(minutes: Int) -> String {
    if minutes == 0 {
        return "Your order is ready!"
    } else if minutes <= 15 {
        return "Almost there - ready in \(minutes) minutes."
    } else if minutes <= 45 {
        return "On its way - ready in \(minutes) minutes."
    } else {
        return "Running late. Estimated time: \(minutes) minutes."
    }
}

print(deliveryStatus(minutes: 0))
print(deliveryStatus(minutes: 10))
print(deliveryStatus(minutes: 30))
print(deliveryStatus(minutes: 60))




func serviceFee(total: Double) -> Double {
    if total < 20 {
        return 0
    } else if total < 50 {
        return total * 0.10
    } else if total < 100 {
        return total * 0.15
    } else {
        return total * 0.20
    }
}

func finalBill(total: Double) -> String {
    let fee = serviceFee(total: total)
    let combined = total + fee
    return "Bill: $\(String(format: "%.2f", total)) + fee: $\(String(format: "%.2f", fee)) = $\(String(format: "%.2f", combined))"
}

print(finalBill(total: 15.0))
print(finalBill(total: 35.0))
print(finalBill(total: 75.0))
print(finalBill(total: 120.0))


func assignSection(guests: Int) -> String {
    switch guests {
    case 1...2:
        return "Bar seating"
    case 3...4:
        return "Standard table"
    case 5...8:
        return "Large table"
    case 9...10:
        return "Private room"
    default:
        return "Invalid guest count"
    }
}

func reservationSummary(name: String, guests: Int) -> String {
    let section = assignSection(guests: guests)
    return "Reservation for \(name) — \(guests) guests — \(section)"
}

print(reservationSummary(name: "Bob", guests: 2))
print(reservationSummary(name: "John", guests: 5))
print(reservationSummary(name: "Michael", guests: 9))
print(reservationSummary(name: "Samantha", guests: 12))



