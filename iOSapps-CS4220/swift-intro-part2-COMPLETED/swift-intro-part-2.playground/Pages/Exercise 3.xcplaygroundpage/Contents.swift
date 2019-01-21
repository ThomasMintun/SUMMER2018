//: [Previous](@previous)

//: ## Exercise 3

/*:
 **A**. Write a function that takes in an array of strings and an index which is an integer. Return the array element at the specified index if it exists in the array; otherwise return `nil`. Use external argument labels and internal parameter names.
 */
 
func element(from array: [String], at index: Int) -> String? {
    if index < 0 || index >= array.count { return nil }
    return array[index]
}

let array = ["dog", "cat", "mouse"]
let elementA = element(from: array, at: 1)
let elementB = element(from: array, at: 10)

/*:
 **B**. Write a function that takes in a double in as the parameter and returns the square of the number. Omit the argument label, and use a default value for the parameter, if none is provided.
 */

func square(_ number: Double = 2) -> Double {
    return number * number
}
let result = square(3)

