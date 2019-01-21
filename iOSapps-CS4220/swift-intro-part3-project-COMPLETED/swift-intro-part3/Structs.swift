
//  ## Structs

//  Structures support many of the same behaviors as classes, including stored properties, methods, and initializers.

//  One of the most important differences between structures and classes is that structures are always copied when they are passed around in your code, but classes are passed by reference.

struct City {
    let name: String
    let population: Int
    
    var description: String {
        return "The city of \(name) with a population of \(population)"
    }
}
// notice that we don't have to define an initializer (aka a constructor)

// Struct with a mutable property and custom init
struct Student {
    let name: String
    var major: String?
    
    init(name: String, major: String? = nil) {
        self.name = name
        self.major = major
    }
}

func runStructsExample() {
    
    let city = City(name: "Saint Louis", population: 100)
    print(city.description)
    
    
 
    
    let student1 = Student(name: "Angela")
    let student2 = Student(name: "Dwight", major: "Beat Farming")
    print(student1)
    print(student2)
    
}


/*
 
 ## Points to Remember
 
 * Structs can have immutable and mutable **properties**, as well as **computed variables** and **methods**
 
 * Structs have an automatically-generated memberwise initializer, but you can define your own init if you need to
 
 * Structs are great for pieces of data that need to get passed around a lot because they're **value types**: meaning they are **passed-by-value** to functions
 
 * Value types are great because you **don't have to worry about side-effects** (at least not from them!)
 
 * Many of Swift's 'primitive' types (Int, String, Bool, Double, ...) are actually implemented as Structs
 
 * Under the covers, Swift uses **copy-on-write** for Structs, so the actual value is only copied when it is changed (which helps performance a LOT)
 
 */







