
// ## Exercise 1

/*
 **A**. Write a simple struct Person with properties name, address, city, age, and favorite food. Give it a computed property called description which will print all the values in a sentence.
 */

struct Person {
    let name: String
    var address: String
    var city: String
    let age: Int
    let favoriteFood: String
    
    var description: String {
        return "\(name) lives at \(address) in \(city), is \(age) years old, and loves \(favoriteFood)."
    }
    
    mutating func move(to newAddress: String, in newCity: String) {
        self.address = newAddress
        self.city = newCity
    }
}

struct Person {
    let name: String
    let address: String
    let city: String
    let age: Int
    let favoriteFood: String
    
    var description: String {
        return "\(name) lives at \(address) in \(city), is \(age) years old, and loves \(favoriteFood)."
    }
}

/*:
 **B**. Add a method to your person struct which will take in a new address and city and "move" the person to a new place.
 */
