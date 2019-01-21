//: ## More on Functions

//: Argument labels and parameter names
// Functions in Swift can have different interal vs. external names for parameters
func greet(person: String, from hometown: String) -> String {
    // `hometown` is the internal name (parameter name)
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}

// `from` is the external name (argument label)
let message = greet(person: "Ethan", from: "Kansas City")


func someFunction(externalName internalName: Int) {
    // In the function body, internalName refers to the value
    // for that parameter.
    print(internalName)
}
someFunction(externalName: 10)

/*
    The purpose of this functionality is to provide more options for programmers to create methods that read well - especially at the point of use.
    A method is defined once but called/used multiple times. "Clarity at the point of use" is a design principle in Swift. Check out the Swift naming guidelines for more details. (This is not an assignment - yet.)
    https://swift.org/documentation/api-design-guidelines/
 */


//: Omitting argument labels
// If you don’t want an argument label for a parameter, write an underscore (_) instead of an explicit argument label for that parameter
func add(_ number: Int, to secondNumber: Int) -> Int {
    return number + secondNumber
}
let result = add(5, to: 7)


//: You can also declare default parameter values with `=` after parameter type
let people = ["dave":23, "sarah":19, "jill":31]

func findNames(of people: [String:Int], aboveAge cutoffAge: Int = 18) -> [String]? {
    var names = [String]()
    for (name, age) in people where age > cutoffAge {
        names.append(name)
    }
    return names.isEmpty ? nil : names
}

let names1 = findNames(of: people, aboveAge: 20)
let names2 = findNames(of: people)


/*:
 ## Points to Remember
 * By default, Swift uses **named parameters** for functions
 * You can specify the external **argument label** and internal **parameter name** for a function (if you need to)
 * You can also _omit_ external argument labels entirely with `_`
 * Function parameters can have default values
 * Swift supports the standard **ternary operator**
 */

//: [Next](@next)
