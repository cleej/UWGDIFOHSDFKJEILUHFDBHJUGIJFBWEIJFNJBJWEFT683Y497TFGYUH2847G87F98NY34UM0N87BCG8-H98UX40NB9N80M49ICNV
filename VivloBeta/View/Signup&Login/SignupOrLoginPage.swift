import LBTAComponents
import Firebase
import FirebaseAuth
import FirebaseDatabase

class SignupOrLoginPage: DatasourceCell {
    
    let comLabel: UILabel = {
        let label = UILabel()
        label.text = "Company"
        label.font = UIFont(name: "Futura-Bold", size: 40)
        return label
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.backgroundColor = .purple
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Futura-Bold", for: .normal)
        button.backgroundColor = .green
        return button
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "bgpic")
        imageView.frame = CGRect(x: 0, y: 0, width: 30, height: 40)
        return imageView
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(logoImageView)
        addSubview(comLabel)
        addSubview(signUpButton)
        addSubview(loginButton)
        
        logoImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 30, heightConstant: 40)
        
        comLabel.anchor(logoImageView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        loginButton.anchor(nil, left: signUpButton.leftAnchor, bottom: signUpButton.topAnchor, right: signUpButton.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 8, rightConstant: 0, widthConstant: 30, heightConstant: 40)
        
        signUpButton.anchor(nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 8, rightConstant: 8, widthConstant: 30, heightConstant: 40)

    }
}
