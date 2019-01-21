//: [Previous](@previous)

//: ## Exercise 1

/*:
 **A**. Declare a _constant_ dictionary of restaurants where you frequently eat and your rating of them on a scale of 1-10.
 */
let restaurantRatings = ["Snarfs": 5, "Qdoba": 7, "Crushed Red": 8]


/*:
 **B**. Iterate through your restaurants dictionary and for each restaurant, print a message to the console like "Subway has a rating of 5"
 */
for (restaurant, rating) in restaurantRatings {
    print("\(restaurant) has a rating of \(rating)")
}


//: [Next](@next)
