import UIKit


/*
----- ForEach -----
Method available on any sequence(range, string, arrays) in Swift.
It lets you run a block of code once for every element in that sequence.

-- Syntax --

sequence.forEach { element in
    // Do something with the element
}

*/

print("----- forEach -----")

print("\n-- forEach with a range --")
(1...5).forEach { number in
    print(number)
}

print("\n-- forEach with a strings --")

"HelloWorld".forEach { letter in
    print(letter)
}

print("\n-- MiniChallenge #1 Arrays --")
var students = ["Lemuel", "Michael", "Rafael", "Robert", "Leo"]

// print the students names using forEach

students.forEach { element in
    // Do something with the element
    print(element.count)
}
