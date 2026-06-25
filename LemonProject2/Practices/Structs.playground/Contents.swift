import UIKit

/*
 ----- STRUCT -----
 Custom data type that lets you group related values and behaviours together.
 Struct is like a blueprint, struct defines the plan.
 Structs define the shape of data, instances bring it to life.
 It can contains:
    - Properties
    - Methods
    - Computed properties

 -- Syntax --

 struct structName {
     var/let propertyName1: ElementType
     var/elt propertyName2: ElementType

     func functionName() {
        //function body
     }
 }

 -- Creating and instace of a struct --
 let/var intanceName = StructName(propertyName1: value1, propertyName2:value2, ...)

 */

struct MenuItem {
    var name: String
    var price: Double
    var imageName: String
}

print("\n-- Creating Instances --")
// Intance
let pizza = MenuItem(name: "Pizza", price: 5.99, imageName: "pizza-image.png")
print(pizza)
print("\n-- Accessing properties --")
print(pizza.name)
print(pizza.price)
print(pizza.imageName)

/*
 Mini-Challege

 - Create a new instance of MenuItems
 - Create your instance using your favorite dish
 - print out all the properties
 */

print("\n-- Mini-Challenge: Favorite Dish --")
let favoriteDish = MenuItem(name: "Lasagna", price: 14.99, imageName: "lasagna-image.png")
print(favoriteDish.name)
print(favoriteDish.price)
print(favoriteDish.imageName)

print("\n-- Customer struct --")

struct Customer {
    let name: String // properties
    var age: Int
    let email: String
    var visits: Int

    func loyaltyStatus() {
        if visits > 7 {
            print("\(name) is a loyalty member ⭐️")
        } else {
            print("\(name) is a regular customer")
        }
    }
}

// Creating Instances
let angela = Customer(name: "Angela", age: 26, email: "angela@mail.com", visits: 7)
let jim = Customer(name: "Jim jr", age: 31, email: "jimmy@mail.com", visits: 1)
let michael = Customer(name: "Michael", age: 60, email: "michael@mailcom", visits: 5)
let dwight = Customer(name: "Dwight", age: 7, email: "dwight@mail.com", visits: 20)

angela.loyaltyStatus()
jim.loyaltyStatus()
michael.loyaltyStatus()
dwight.loyaltyStatus()

struct Book {
    let title: String // property
    let author: String
    var pages: Int

    func printDetails() {
        print("title: \(title), author: \(author), page: \(pages)")
    }
}

let swiftBook = Book(
    title: "Coding with Swift",
    author: "Bruce Wayne",
    pages: 255
)

let vueBook = Book(
    title: "Learning Vue.js",
    author: "Peter Parker",
    pages: 173
)

let pythonBook = Book(
    title: "Mastering Python",
    author: "Clark Kent",
    pages: 412
)

print("\n-- SwiftBook data --")
print("Book title: \(swiftBook.title)")
print("Book author: \(swiftBook.author)")
print("Book pages: \(swiftBook.pages)")

print("\n-- vueBook data --")
print("Book title: \(vueBook.title)")
print("Book author: \(vueBook.author)")
print("Book pages: \(vueBook.pages)")

print("\n-- Books using printDetails() --")
swiftBook.printDetails()
vueBook.printDetails()
//book3

let dishDic = [
    "name": "Pizza",
    "price": "6.99",
    "image": "pizza-image",
    "isActive": "true"
]

print(dishDic["name"] ?? "xxxxx")


struct DishData {
    var name: String
    var price: Double
    var image: String
    var isActive: Bool
}

let premiumPizza = DishData(name: "Pizza", price: 6.99, image: "pizza-image", isActive: true)

print(premiumPizza.name)


// Session #2
print("\n -- Movie Struct --")

struct Movie {
    var title: String
    var director: String
    var year: Int
    var genre: String
    
    func printSummary() {
        print("\(title) \(year) Directed by \(director) ")
        
    }
    
}

// Create instances
let interstellar = Movie(
    title: "Interstellar",
    director: "Christopher Nolan",
    year: 2014,
    genre: "Sci-fi")
let darkKnight = Movie(
    title: "The Dark Knight",
    director: "Christopher Nolan",
    year: 2008,
    genre: "action")
let toyStory = Movie(
    title: "Toy Story",
    director: "John Lasseter",
    year: 1995,
    genre: "Family")
let inception = Movie(
    title: "Inception",
    director: "Christopher Nolan",
    year: 2010,
    genre: "Sci-fi")
let pulpFiction = Movie(
    title: "Pulp Fiction",
    director: "Quentin Tarantino",
    year: 1994,
    genre: "Crime")
let findingNemo = Movie(
    title: "Finding Nemo",
    director: "Andrew Stanton",
    year: 2003,
    genre: "Family")


interstellar.printSummary()
darkKnight.printSummary()
toyStory.printSummary()


// Array of Structs

let movies = [interstellar, darkKnight, toyStory, inception, pulpFiction, findingNemo]
    


    

/*
 Mini-Challenge
 1. Add the property genre to the Movie struct.
 2, Create at least 3 more movies and add them  to the  array.
 3. Loop through the aray and print only the movies released after 2000, and don't forget to alo show the genre property.
 
 */
print("\n -- Mini Challenge Movies")


    // Loop through
    movies.forEach { movie in
        if (movie.year >= 2000) {
            print(movie.title, movie.year, movie.director, movie.genre)}
    }


