//: [Previous](@previous)

//: ## Enumerations

//: Simple enum
// An enumeration defines a common type for a finite group of related values and enables you to work with those values in a type-safe way within your code.
// This replaces having lots of string constants (in C/C++) or enums solely based on Ints which can easily get confused.

enum Priority {
    case low
    case normal
    case high
}

let currentPriority = Priority.normal
print(currentPriority)

//: Switch on an enum (no break statements in switches in Swift)
switch currentPriority {
case .high: print("Do it now!")
default: print("No huge rush")
}

//: Typed enum - when you need an underlying raw value
enum TaskStatus: Int {
    case notStarted = 1  // can explicitly starting value
    case developing, testing, done // can declare on same line
    
    // A computed property on an enum
    var description: String {
        switch self {
        case .notStarted: return "Not Started"
        case .done: return "Done"
        default: return "In Progress"
        }
    }
}

let status = TaskStatus.developing
print(status.rawValue)
print(status.description)


enum Suit: String {
    case spades = "Spades"
    case hearts = "Hearts"
    case diamonds = "Diamonds"
    case clubs = "Clubs"
    
    var isRed: Bool { return self == .hearts || self == .diamonds }
    var isBlack: Bool { return !self.isRed }
}

let suit = Suit.spades

Suit.spades.isBlack
Suit.clubs.isBlack
Suit.hearts.isRed
Suit.diamonds.isRed


//: ## Switch statements can be used for other things outside enums
func centuryDescription(for year: Int) -> String {
    switch year {
    case 0...1899:   return "Long time ago"
    case 1900...1999:   return "20th century"
    case 2018:          return "Best year EVER"
    case 2000...2099:   return "21st century"
    default:            return "Whaaaat?"
    }
}

centuryDescription(for: 500)
centuryDescription(for: 1950)
centuryDescription(for: 2017)
centuryDescription(for: 2018)

/*:
 ## Points to Remember
 * Enums can be simple or can have raw values
 * Enums can have **computed variables** and **methods**
 * Enums are value types, meaning they are passed-by-value to functions
 * `switch` statements can be used on enums
 * `switch` statements can be used on Ints and many other types for pattern matching
 * `switch` statements do not require `break`s like other languages
 */

//: [Next](@next)


