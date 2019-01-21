//: [Previous](@previous)

//: ## Optionals
//: Type-safe way to represent the possibility of `nil` (similar to `NULL` from other languages)

let airfare = ["Ireland": 900.0, "India": 1100.0]

//: A `Dictionary` return an `Optional` value when you attempt to retrieve a value for a given key. An `Optional` is just a wrapper around a value, letting the compiler know the value can be present (in this case a `Double`) or it can be `nil`.
let irelandCost = airfare["Ireland"] // If there is no value set for "Ireland", `nil` will be returned

//: An Optional _type_ is represented by a `?` at the end like: `Double?`
let chinaCost: Double? = airfare["China"]  // same as `irelandCost` but explicitly typed

//print(chinaCost) // will generate a warning because it is an Optional

//: Rudimentary way to check for `nil`: using `==` or `!=`
if irelandCost == nil {
    // do something
}

//: Better way: _unwrap_ the optional
if let irelandAirfare = airfare["Ireland"] {
    // this code only executes if `irelandAirfare` is NOT `nil`
    // inspect `irelandAirfare` and notice it is a `Double` not `Double?`
    print(irelandAirfare)
}

//print(irelandAirfare)  // the unwrapped `irelandAirfare` is out of scope here


//: You can also provide a default value with the **nil coalescing operator**
let chinaAirfare = airfare["China"] ?? 1500.0
// Inspect `chinaAirfare` and notice it is a `Double` not `Double?`


//: Declaring `Optional` types with `?`
var selectedAirfare: Double?
selectedAirfare = airfare["Russia"]

let roundedAirfare: Double? = selectedAirfare?.rounded()


//: Force unwrapping `Optional` types with `!`
selectedAirfare = airfare["Ireland"]
let forceUnwrappedAirfare: Double = selectedAirfare!.rounded()  // You're saying to the compiler "I know this value is not nil"
// This is usually a bad idea, unless you know _for certain_ the value will be there or are just debugging / testing things out.
// And it is a really bad idea in production applications for the most part (always exceptions).
// If you force unwrap an `Optional` type, and it IS nil, your app will crash.

//: You can also perform multiple `Optional` unwrappings at once
if let irelandAirfare = airfare["Ireland"], let _ = airfare["China"] {
    // this code only executes if BOTH unwrappings succeed
    // `let _` is a way to test that value is unwrapped but without storing the value itself in a variable
    print(irelandAirfare)
}

/*:
 ## Points to Remember
 * **Prefer `if let` to safely unwrap optionals** instead of nil-checking
 * **Nil coalescing operator** `??` allows setting a default value
 * You can declare variables to use an optional type with `?`
 * You can force unwrap an Optional type with `!` but it is typically considered bad practice in production applications for the most part (always exceptions)
 */

//: [Next](@next)
