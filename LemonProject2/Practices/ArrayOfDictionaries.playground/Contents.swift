import UIKit


/*

-- ARRAY SYNTAX --
let/var arrayName = [value1, value2, valueN]

-- DICTIONARY SYNTAX --
let/var dictionaryName = [
    key1: value1,
    key2: value2,
    keyN: valueN
]

-- FOR-IN LOOP SYNTAX--
for loopVariable in sequence {
    // cod to repeat
}

-- FOREACH SYNTAX --
sequence.forEach { item in
    //code to repeat
}

*/


print("-- ARRAY OF DICTIONARIES --")

print("\n-- menuItems --")
let menuDishes = [
    ["name": "Pizza", "price": "12"],
    ["name": "Pasta", "price": "10"],
    ["name": "Salad", "price": "8"]
]

print("\n-- looping through menuDishes --")
for dish in menuDishes {
    for (key, value) in dish {
        print("\(key): \(value)")
    }
    print("-----")
}

print("\n-- Looping through menuDishes2")
for dish in menuDishes {
    let name = dish["name"] ?? "Unknown"
    let price = dish["price"] ?? "0"
    print("\(name) $\(price)")
}

