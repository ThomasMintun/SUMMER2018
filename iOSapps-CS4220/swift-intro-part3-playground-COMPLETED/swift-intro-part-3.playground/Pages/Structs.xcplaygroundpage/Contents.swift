/*:
 
 # A Swift Intro to Swift: Part Three
 
 Note: In the `Editor` tab of the Xcode menu, select `Show Rendered Markup` or `Show Raw Markup` to toggle between presentation modes.
 
 */

//: ## Structs
//: Basic struct
//  Structures support many of the same behaviors as classes, including stored properties, methods, and initializers.
// One of the most important differences between structures and classes is that structures are always copied when they are passed around in your code, but classes are passed by reference.

/*struct City {
    let name: String
    let population: Int
    
    var description: String {
        return "The city of \(name) with a population of \(population)"
    }
}
// notice that we don't have to define an initializer (aka a constructor)

let city = City(name: "Saint Louis", population: 100)
print(city.description)*/


///////////////////////////////////////////////////////

struct Book {
    var name: String
    var idNumber: Int?
    
    init(name: String, idNumber: Int? = nil){
        self.name = name
        self.idNumber = idNumber
    }
}

class Bookstore {
    var books = [Book]()
}

var theStore = Bookstore()
var theStoresBooks = theStore.books

var book1 = Book(name: "one", idNumber: 3)
var book2 = Book(name: "two")

theStoresBooks.append(book1)
theStoresBooks.append(book2)

print (book1)
print (book2)

for things in theStoresBooks{
    print(things.name, things.idNumber)
}


//: Struct with a mutable property and custom init
/*struct Student {
    let name: String
    var major: String?
    
    init(name: String, major: String? = nil) {
        self.name = name
        self.major = major
    }
}

let student1 = Student(name: "Angela")
let student2 = Student(name: "Dwight", major: "Beat Farming")
print(student1)
print(student2)*/


/*:
 ## Points to Remember
 * Structs can have immutable and mutable **properties**, as well as **computed variables** and **methods**
 * Structs have an automatically-generated memberwise initializer, but you can define your own init if you need to
 * Structs are great for pieces of data that need to get passed around a lot because they're **value types**: meaning they are **passed-by-value** to functions
 * Value types are great because you **don't have to worry about side-effects** (at least not from them!)
 * Many of Swift's 'primitive' types (Int, String, Bool, Double, ...) are actually implemented as Structs
 * Under the covers, Swift uses **copy-on-write** for Structs, so the actual value is only copied when it is changed (which helps performance a LOT)
 */

//: [Next](@next)
