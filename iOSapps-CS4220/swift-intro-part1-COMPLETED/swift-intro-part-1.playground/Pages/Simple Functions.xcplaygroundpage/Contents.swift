//: [Previous](@previous)

//: ## Simple Functions

//: No parameters and no return value
func sayHello() {
    print("Hello world!")
}

sayHello()

//: Basic parameter with no return value
func sayHello(name: String) {
    print("Hello \(name)")
}

sayHello(name: "Sarah")

//: Returning values
func multiplyByTwo(number: Double) -> Double {
    return number * 2
}

let value = multiplyByTwo(number: 8)



func calculateSum(numbers: [Int]) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

let sum = calculateSum(numbers: [5, 7, 17])



func calculateRoundedGrade(earnedPoints: Double, totalPoints: Double) -> Double {
    return (( earnedPoints / totalPoints ) * 100).rounded()
}

let grade = calculateRoundedGrade(earnedPoints: 72.5, totalPoints: 90)


/*:
 ## Points to Remember
 * Functions can have multiple parameters
 * Functions in Swift use named parameters
 * Function return types come after the arrow `->` or are empty if void
 */

//: [Next](@next)
