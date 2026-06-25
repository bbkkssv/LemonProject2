import UIKit

let greeting = "hello world"
print(greeting.uppercased())
print(greeting.lowercased())
print(greeting.capitalized)


let spaced = "  Cohort10  "
print(spaced.trimmingCharacters(in: .whitespaces))

let phrase = "Hello World"
print(phrase.replacingOccurrences(of: "World", with: "Cohort#100"))

// Searching
let text = "Swift is fun"
print(text.contains("fun")) // true
print(text.hasPrefix("Swift")) // true
print(text.hasSuffix("fun")) // true

// Substrings
let letters = "abcdef"
print(letters.prefix(3)) // abc
print(letters.suffix(2)) // ef
print(letters.dropFirst()) // bcdef
print(letters.dropLast()) // abcde


// Counting and checking
print("Hello".count) // 5
print("".isEmpty) // true

// Converting
let numberString = "123"
print(Int(numberString) ?? 0) //123 nil coalescing operator

let piString = "3.14"
print(Double(piString) ?? 0.0) // 3.14nil coalescing operator



