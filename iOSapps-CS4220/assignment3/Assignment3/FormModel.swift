import Foundation

struct User {
    let name: String
    let email: String
    let password: String
    let phone: String
}

struct UserBook {
    let users: [User] //users is an array of User objects ... accesss users with users.0; users.1; users.2; etc UserBook.users.0
}

class FormModel {
    
    //private var userBook: [UserBook] = [] //make userBook to hold info.
    
    init() {
        
    }
    
    func addToUserBook(userEntry: User) { //function to add user to userBook
        //take input in text fields and assign that info the field of the struct
    }
    
    func restart(formModel: FormModel) -> FormModel{
        //FormModel = FormModel.init() //make a new instance of FormModel to clear it??
        return FormModel.init() //Will this work return a clear form model to restart?
    }
    
    func clear(){
        //clear each text field? or just the field working on currently?
        //nameTextField.text = nil
    }
   
}
