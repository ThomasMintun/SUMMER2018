
## ASSIGNMENT 3 

In this project, you will create a form that an app could use to register a new user. Your project should use the MVC pattern by having a separate file containing a Model class.

### Form Inputs

1) The user interface should have **UITextFields** for name, email address, password, and phone number. The keyboard should properly resign/dismiss when pressing Done/Return on each text field.

2) Use **UILabels** to serve as titles of the text fields, so the user knows what to enter in which field. - DONE

3) There should be **placeholder text** in each text field. - DONE

4) **Secure text entry** must be used on the password text field. - DONE

5) A suitable **type of keyboard** should be used for each of the text fields respectively. - DONE


### Other Interface Elements

1) There should be a **Restart button** on the form which will clear the Model and all the text fields to their starting, empty state. If the keyboard is open when this is pressed, the keyboard should be dismissed.

2) There should be a **Clear button** on the form which will only reset the text fields to their starting, empty state. Any already signed up users should remain. If the keyboard is open when this is pressed, the keyboard should be dismissed.

3) There should be a **Sign Up button** on the form which will create the user from the current data in the form, add the user to the model's list of users, and then clear the current text field contents. If the keyboard is open when this is pressed, the keyboard should be dismissed.

4) **Research UITextView**, a new component that we have not gone over in class. Place a text view at the bottom of the screen and disable editing on it. As each user is added from the form, their name should appear on a row in the text view.

5) At least one **UIImageView with an image** (stored in Assets.xcassets) must be present on the screen. It could be like an app logo or icon or background image. It can be whatever you want/can find. I'd recommend using some sort of vector image.


### Model & Validation

1) The **password** must be at least 7 characters to be valid input, and the **phone number** must be at least 10 characters. **All other text fields** must have at least 3 characters to be valid input.

2) The **phone number** must only contain numeric characters (you can accomplish this through a variety of means) to be valid input.

3) The **Sign Up button** should only be enabled if all the current input is valid. 

4) You are NOT required to do any other input validation, though you may do so for extra credit (see below).


### Other Notes

1) Remember: Put problem/domain logic in your Model (e.g. validating input, storing current form values, adding new user, clearing the form, restarting), and put presentation logic in your View Controller (e.g. enabling buttons, clearing text fields).

2) When using delegation with UIKit components, make your View Controller the delegate.

3) You are NOT required to use Auto Layout for this project. Just design for the iPhone 8 Simulator.

4) See the Screenshots for what the basic interface could look like at various points. You can design your interface to look differently as long as the functionality meets the requirements.

5) You may want to research Outlet Collections to hold an array of references to all the text fields. This is purely optional; it can just make certain tasks easier.


### Extra Credit

**Up to 10 points of extra credit** are available for this project. Here are some ideas of things you could do. You can put together a couple options to reach 10 points. Be sure to describe the extra credit in the Comments field in Canvas!

1) Use Auto Layout for the interface - 5 points

2) Validate that the email and phone number are actually valid using a regular expression or some other approach - 5 points

3) Provide some kind of immediate feedback on each text field (checkbox, red x, etc) that lets the user know which field has invalid data - 5 points

4) You could also make the input more efficient by forwarding the user to the next text field when they hit Return instead of closing the keyboard (remember on a real iOS device, users don't have a tab button). - 5 points

5) If you have other ideas, ask me about them and I'll let you know what they'd be worth.

