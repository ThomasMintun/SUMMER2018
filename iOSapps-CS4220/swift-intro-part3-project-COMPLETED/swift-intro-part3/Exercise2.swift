


//: ## Exercise 2

/*:
 **A**. Write a simple protocol for 'CanKick' defining a method 'kick()'
 */

protocol CanKick {
    func kick()
}


/*:
 **B**. Write a class 'Ninja' which conforms to 'CanKick' protocol and has a couple other properties on it
 */

class Ninja: CanKick {
    var energy: Int = 10
    var health: Int = 10
    
    func kick() {
        energy -= 1
    }
}


