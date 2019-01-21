//: [Previous](@previous)


//: ## Exercise 1

/*:
 **A**. Declare a constant with your name and another constant with your age. Then create a single `String` constant with a message containing your name and age. Something like: "My name is Susie, and I am 23 years old."
 */
let name = "Susie"
let age = 23
let message = "My name is \(name), and I am \(age) years old"

/*:
 **B**. Declare a constant `Array` of `String`s containing some movies you like. Then use the `for-in` loop to iterate through them and print them to the console. Then i) print the length of the array of movies; and ii) print the second movie in the array.
 */
let movies = ["Serenity", "Aliens", "Avengers"]
for movie in movies {
    print(movie)
}
print(movies.count)
print(movies[1])

/*:
 **C**. Declare two empty `Int` arrays. Loop through the numbers 0-100.. if a number is divisible by 3, add it to the first array. And if it is divisible by 5, add it to the other array. Otherwise, do nothing. (Hint: Use the modulus operator: `%`.)
 */
var divisibleByThree = [Int]()
var divisibleByFive = [Int]()

for index in 0...100 {
    if index % 3 == 0 {
        divisibleByThree.append(index)
    }
    if index % 5 == 0 {
        divisibleByFive.append(index)
    }
}

print(divisibleByThree)
print(divisibleByFive)
//: [Next](@next)
