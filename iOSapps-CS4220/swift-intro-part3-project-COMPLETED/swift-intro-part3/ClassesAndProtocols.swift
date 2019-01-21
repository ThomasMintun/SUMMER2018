

class Dog {
    let name: String
    var energy: Int
    var happiness: Int
    
    var isContent: Bool { return energy > 5 && happiness > 7 }
    
    init(name: String) {    // must define init !
        self.name = name    // must use self here
        energy = 10         // can use self or not in other places
        happiness = 10
    }
    
    func eat() {
        energy += 3
        happiness += 5
        daydream()
    }
    
    private func daydream() {
        happiness += 2
    }
}

//: Class Inheritance
class GoldenRetriever: Dog {
    var loyalty = 10
    
    override var isContent: Bool { return super.isContent && loyalty > 9 }
    
    override func eat() {
        super.eat()     // don't have to call the super class implementation; just depends on logic that you want
        loyalty += 1
    }
    
}

func runClassesExample() {
    
    let rufus = Dog(name: "Rufus")
    print(rufus.happiness)
    rufus.happiness = 7
    
    rufus.eat()
    print(rufus.energy)
    // rufus.daydream() // does not work
    
    let rover = GoldenRetriever(name: "Rover")
    rover.eat()
    let _ = rover.isContent
}

//: ## Protocols
// A protocol defines behavior that its users must implement (similar to Java interfaces or a class in C++ with all pure virtual methods)

protocol CanSleep {
    func sleep()
}

class Cat: CanSleep {
    func sleep() {
        // go to sleep
    }
}

struct Bee: CanSleep {
    func sleep() {
        // go to sleep
    }
}


/*:
 ## Points to Remember
 
 * Classes are **passed-by-reference** and must be used carefully to avoid side-effects
 
 * Classes require you to define at least one initializer (unlike Structs)
 
 * All stored properties must be initialized in init() and before calling any methods (same for Structs)
 
 * At a basic level, most of the capabilities of Classes are similar to Structs (mutable and immutable properties, methods, computed properties, access control)
 
 * Classes can only have one super class from which they inherit
 
 * In iOS/Swift, we typically use Classes for Models and View Controllers (and other objects that need to persist 'state'), but for data which is passed around, prefer value types first.
 
 * Protocols define required behavior of whoever implements them (Classes or Structs)
 
 * A Class or Struct can adopt multiple protocols
 
 * Prefer **composition and using protocols** over **inheritance** (we'll talk about this more later)
 
 */



