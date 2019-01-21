import UIKit

class FormViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var outputTextTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let formModel = FormModel()
    
    @IBAction func restartAction(_ sender: UIButton) {
        //formModel.restart
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
    }

    
    
}



//is it buttons that are added to the right of textfields?? the chekmarks.


//write function to disable Sign-Up function at start screen & when no info entered
/*func updateDirections(){
    if formModel.currentLocation.allowedDirections.contains(.north) {northButton.isEnabled = true} else {northButton.isEnabled = false}
}*/
