import LBTAComponents
import Firebase
import FirebaseAuth
import FirebaseDatabase

class LoginPage: DatasourceCell {
    
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
        
        // LOGIN CODE BELOW
        
        /*
        @IBAction loginButton(_ sender: AnyObject) {
            guard let email = emailField.text, let password = passField.text else { return }
            
            Auth.auth().signIn(withEmail: email, password: password, completion: { ( user, error ) in
                if let error = error {
                    print(error.localizedDescription)
                } else if let user = Auth.auth().currentUser {
                    
                }
            })
        }
        */
    }
}
