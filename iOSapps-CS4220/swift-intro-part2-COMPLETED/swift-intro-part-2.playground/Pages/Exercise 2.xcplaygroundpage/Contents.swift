//: [Previous](@previous)

//: ## Exercise 2

/*:
 **A**. Declare a _constant_ dictionary where the keys are titles of books and the values are their prices.
 */

let bookList = ["The Pragmatic Programmer": 29.99, "Don't Make Me Think": 35.99]


/*:
 **B**. Write one `if let` statement checking for the presence of a value in your book dictionary. If it exists, print it out.
 Then write another `if let` which checks for the presence of multiple values in your dictionary. If they exist, print them out.
 */

if let pragmaticPrice = bookList["The Pragmatic Programmer"] {
    print(pragmaticPrice)
}

if let refactoringPrice = bookList["Refactoring"], let dontMakeMeThinkPrice = bookList["Don't Make Me Think"] {
    // will these ever execute?
    print(refactoringPrice)
    print(dontMakeMeThinkPrice)
}

//: [Next](@next)


