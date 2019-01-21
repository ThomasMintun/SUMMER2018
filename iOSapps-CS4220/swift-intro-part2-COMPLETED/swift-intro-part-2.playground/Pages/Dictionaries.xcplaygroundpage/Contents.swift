/*:
 
 # A Swift Intro to Swift: Part Two
 
 Note: In the `Editor` tab of the Xcode menu, select `Show Rendered Markup` or `Show Raw Markup` to toggle between presentation modes.
 
 */


//: ## Dictionaries (associative arrays or hash maps)
//: Dictionaries are key-value structures. The key is on the left and the value is on the right.
let people: [String: Int] = ["dave": 23, "sarah": 19, "jill": 31]

// for-in loops work slightly different for Dictionaries
for person in people {
    print(person.key)
    print(person.value)
}

for (name, age) in people {
    print("\(name) is \(age) years old")
}

var airfare = [String: Double]()
airfare["Ireland"] = 900.00
airfare["India"] = 1100.99

// what happens when I run the following line?
//print(airfare["Canada"])

/*:
 ## Points to Remember
 * `Dictionary` is a **key-value** data structure
 * Unlike `Array` (which is an ordered collection), iterating through a `Dictionary` (an unordered collection) will not necessarily yield the same order each time on your user's devices.
 * `Command-click` to see variable or type definition
 */

//: [Next](@next)
