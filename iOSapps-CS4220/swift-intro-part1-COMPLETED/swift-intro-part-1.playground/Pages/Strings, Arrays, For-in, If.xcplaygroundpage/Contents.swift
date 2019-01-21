//: [Previous](@previous)

//: ## Type Conversion
//: If you need to convert a value to a different type, explicitly make an instance of the desired type.
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//: ## String Interpolation
let farmer = "Bob"
let apples = 3
let oranges = apples + 2
let appleSummary = "\(farmer) has \(apples) apples."
let fruitSummary = "\(farmer) has \(apples + oranges) pieces of fruit."

//: ## Arrays
let cities = ["Saint Louis", "Kansas City", "Columbia"]
let currentCity = cities[0]    // zero-based indexing

var countriesToVisit = [String]()   // empty array (must give it a type)
countriesToVisit.append("Italy")
countriesToVisit.append("Australia")
countriesToVisit[1] = "China"

let bucketList: [String] = []       // alternative way to write empty array
//bucketList.append("Climb Mt. Everest")   // won't work because bucketList is a constant

//: ## If statements
if countriesToVisit.count > 5 {
    print("You better get started now!")
} else if countriesToVisit.contains("Australia") {
    print("I want to go there too.")
} else if countriesToVisit.isEmpty {
    print("Where do you want to go?")
} else {
    print("Sounds good")
}

//: ## For-in loops
for city in cities {
    print(city.lowercased())
}

for number in 0..<5 {    // Half-Open Range
    print(number)
}

for number in 0...5 {    // Closed Range
    print(number)
}

for (index, city) in cities.enumerated() {   // when you need the index and the value
    print("\(city) is number \(index)")
}

/*:
 ## Points to Remember
 * Values are **never implicitly converted/coerced** to another type
 * String interpolation is kind of an exception, where values with types that conform to a special protocol get converted to Strings
 * Arrays are **homogeneous**: each element must be of the same type
 * Arrays use **zero-based indexing**
 * **For-in loops** avoid runtime errors and replace the need for typical C-style for-loops
 */

//: [Next](@next)
