
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var showAnswerButton: UIButton!
    @IBOutlet weak var nextQuestionButton: UIButton!
    
    let model = QuizModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateWithNextQuestion()
    }

    @IBAction func showAnswerButtonTapped(_ sender: UIButton) {
        answerLabel.isHidden = false
        nextQuestionButton.isEnabled = true
        showAnswerButton.isEnabled = false
    }

    @IBAction func nextQuestionButtonTapped(_ sender: UIButton) {
        updateWithNextQuestion()
    }
    
    private func updateWithNextQuestion() {
        let quizEntry = model.nextQuizItem()
        questionLabel.text = quizEntry.question
        answerLabel.text = quizEntry.answer
        answerLabel.isHidden = true
        nextQuestionButton.isEnabled = false
        showAnswerButton.isEnabled = true
    }

}

