/*:
 
 # A Swift Intro to Swift: Part One
 
 Based on Apple's [A Swift Tour] and tailored for this class.
 
 [A Swift Tour]: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html
 
 Note: In the `Editor` tab of the Xcode menu, select `Show Rendered Markup` or `Show Raw Markup` to toggle between presentation modes.
 
 */

//: ## Hello World
print("Hello World!")

//: ## Constants, Basic Types
let language: String = "Swift"
let yearIntroduced: Int = 2014
let currentVersion: Double = 4.1
let isOpenSource: Bool = true

//: ## Type Inference
let xcodeVersion = 9.4    // Option-Click over `xcodeVersion` to see inferred type
let iosMajorVersion = 11
let platform = "macOS"

//: ## Variables
let age = 40
// age += 1    // doesn't compile because age is a constant

var birthday = "July 10"   // need to use a variable if it's value will change
birthday = "September 1"

/*:
 ## Points to Remember
 * `Option-Click` to see additional information on a variable, function, or type
 * Types can be **declared explicitly** or **implicitly inferred** by the compiler
 * **Prefer inferred typing** as it improves readability
 * The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once
 * **Prefer immutable constants**. Change to mutable variables as needed
 * Constant and variable names should be **meaningful** and **lowerCamelCased**
 * **Clarity** is more important than **brevity** (no names like 'x' or 'i')
 */

//: [Next](@next)
