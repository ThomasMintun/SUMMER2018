import Foundation

struct QuizItem {
    let question: String
    let answer: String
}

class QuizModel {
    
    private var quizItems = [QuizItem]()
    private var currentIndex = -1
    
    init() {
        self.quizItems = [
            QuizItem(question: "What is your favorite color?",
                  answer: "Blue"),
            QuizItem(question: "What's the answer to life, the universe, and everything?",
                  answer: "42"),
            QuizItem(question: "What is the average airspeed velocity of a unladen swallow?",
                  answer: "Is it carrying coconuts?")
        ]
    }
    
    func nextQuizItem() -> QuizItem {
        currentIndex = (currentIndex + 1) % quizItems.count
        return quizItems[currentIndex]
    }
    
}

