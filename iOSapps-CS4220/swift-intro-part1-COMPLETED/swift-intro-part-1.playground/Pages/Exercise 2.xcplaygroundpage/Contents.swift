//: [Previous](@previous)


//: ## Exercise 2

/*:
 **A**. Write a function that takes in an `Array` of `Int`s and returns the average (arithmetic mean) of the array as a `Double`. If the array is empty, return 0.
 */

func calculateAverage(numbers: [Int]) -> Double {
    // if you don't this, NaN will be returned when the array `numbers` is empty
    if numbers.isEmpty { return 0 }
    
    var total = 0.0
    for number in numbers {
        total += Double(number) // must explicitly coerce Ints to Doubles
    }
    return total / Double(numbers.count)
}

let average1 = calculateAverage(numbers: [1, 2, 3, 4, 5])
let average2 = calculateAverage(numbers: [3, 8, 18])
let oops = calculateAverage(numbers: [])


/*:
 **B**. Write a function to calculate the total price of a trip to the store to buy apples and oranges. You don't know how many of each you will buy, so your function needs to let you specify the amounts. Also, Apples are $0.79 each and oranges are $0.50 each.
 */

func calculateTotalPrice(numberOfApples: Int, numberOfOranges: Int) -> Double {
    let applePrice = 0.79
    let orangePrice = 0.50
    
    let applesTotal = Double(numberOfApples) * applePrice
    let orangesTotal = Double(numberOfOranges) * orangePrice
    return applesTotal + orangesTotal
}

let totalPrice = calculateTotalPrice(numberOfApples: 5, numberOfOranges: 3)


