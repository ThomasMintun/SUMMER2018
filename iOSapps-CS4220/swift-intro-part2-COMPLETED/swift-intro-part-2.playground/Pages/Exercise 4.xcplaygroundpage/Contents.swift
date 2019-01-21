//: [Previous](@previous)

/*:
 **A**. Write an enum called "HTTPStatusCode" with an Int raw value. The raw values should represent possible HTTP status codes returned from a server (like 200 for success).
 */
enum HTTPStatusCode: Int {
    case success = 200
    case notFound = 404
    case internalError = 500
    
    var description: String {
        switch self {
        case .success: return "Success"
        case .notFound: return "Resource Not Found"
        case .internalError: return "Internal Error"
        }
    }
}

/*:
 **B**. Add a computed property to your HTTPStatusCode which will return a useful description of the status which you could then use to print to the console.
 */


/*:
 **C**. Write a function with parameters `name: String` and `age: Int` that returns a greeting `String`. Example assuming `name` is Kaylee
 - If `age` is 1, the returned string should be "Happy first birthday, Kaylee!"
 - If `age` falls within 4-20: "Happy birthday 4th, Kaylee!" (should use 4th, 5th, etc)
 - Otherwise, return "Happy birthday!"
 */

func greeting(name: String, age: Int) -> String {
    switch age {
    case 1: return "Happy first birthday, \(name)"
    case 4...20: return "Happy \(age)th birthday, \(name)"
    default: return "Happy birthday!"
    }
}
let greeting1 = greeting(name: "Kaylee", age: 1)
let greeting2 = greeting(name: "Kaylee", age: 4)
let greeting3 = greeting(name: "Kaylee", age: 30)




//: [Next](@next)
