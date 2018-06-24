import LBTAComponents
import Firebase
import FirebaseAuth
import FirebaseDatabase

class SignupPage: DatasourceCell {
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign up"
        label.font = UIFont(name: "Futura-Bold", size: 20)
        return label
    }()
    
    let usernameField: UITextField = {
        let field = UITextField()
        field.placeholder = "username"
        return field
    }()
    
    let emailField: UITextField = {
        let field = UITextField()
        field.placeholder = "name"
        return field
    }()
    
    let passField: UITextField = {
        let field = UITextField()
        field.placeholder = "password"
        return field
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continue", for: .normal)
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        // SIGN UP CODE BELOW
        
        /*
        @IBAction signUpButton(_ sender = AnyObject) {
            guard let username = self.usernameField.text, !username.isEmpty else { print("Username is empty."); return}
            guard let email = self.emailField.text, !email.isEmpty else { print("Email is empty."); return }
            guard let password = self.passField.text, !password.isEmpty else { print("Password is empty."); return }
            
            let ref = FIRDatabase.database().reference().root
            
            if email != "" && username != "" && password != "" {
                Auth.auth().createUser(withEmail: email, password: password, completion: { ( user, error ) in
                    if error != nil {
                        print(error!)
                    }
                })
            }
        }
        */
        
        addSubview(continueButton)
    }
}
