import LBTAComponents

class ProfilePage: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            print(datasourceItem!)
            
            guard let profile = datasourceItem as? Profile else { return }
            bioLabel.text = profile.bioText
            usernameLabel.text = profile.username
            schoolLabel.text = profile.school
            rating = profile.rating
            bgImageView = profile.bgImage
            profileImageView = profile.profileImage
            friends = profile.friends
            docs = profile.docs
            posts = profile.posts
        }
    }
    
    // add "| rating" next to usernameLabel
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.font = UIFont(name: "Futura", size: 20)
        return label
    }()
    
    let schoolLabel: UILabel = {
        let label = UILabel()
        label.text = "Some sample text."
        label.font = UIFont(name: "Futura", size: 15)
        return label
    }()
    
    let bioLabel: UILabel = {
        let label = UILabel()
        label.text = "Some sample text."
        label.font = UIFont(name: "Futura", size: 12)
        return label
    }()
    
    var bgImageView: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "bgpic")
        image.frame = CGRect(x: 0, y: 0, width: 50, height: 30)
        return image
    }()
    
    var profileImageView: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "logo")
        return image
    }()
    
    var rating = 5
    
    var friends = 5
    
    var posts = 5
    
    var docs = 5
    
    let profileViewOne = UIView()
    
    let profileViewTwo = UIView()
    
    let profileViewThree = UIView()
    
    let friendsLabel: UILabel = {
        let label = UILabel()
        label.text = "Friends"
        label.font = UIFont(name: "Futura-Bold", size: 17)
        return label
    }()
    
    let postsLabel: UILabel = {
        let label = UILabel()
        label.text = "Posts"
        label.font = UIFont(name: "Futura-Bold", size: 17)
        return label
    }()
    
    let docsLabel: UILabel = {
        let label = UILabel()
        label.text = "Docs"
        label.font = UIFont(name: "Futura-Bold", size: 17)
        return label
    }()
    
    let friendsNumber: UILabel = {
        let label = UILabel()
        label.text = "55"
        label.font = UIFont(name: "Futura", size: 17)
        return label
    }()
    
    let docsNumber: UILabel = {
        let label = UILabel()
        label.text = "55"
        label.font = UIFont(name: "Futura", size: 17)
        return label
    }()
    
    let postsNumber: UILabel = {
        let label = UILabel()
        label.text = "55"
        label.font = UIFont(name: "Futura", size: 17)
        return label
    }()
    
    let friendButton: UIButton = {
        let button = UIButton()
        button.setTitle("Friends", for: .normal)
        button.backgroundColor = .cyan
        return button
    }()
    
    let messageButton: UIButton = {
        let button = UIButton()
        button.setTitle("Message", for: .normal)
        button.backgroundColor = .cyan
        return button
    }()
    
    let pokeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Poke", for: .normal)
        button.backgroundColor = .cyan
        return button
    }()
    
    fileprivate func setupProfile() {
        
        addSubview(profileViewOne)
        addSubview(profileViewTwo)
        addSubview(profileViewThree)
        
        addSubview(usernameLabel)
        addSubview(schoolLabel)
        addSubview(bioLabel)
        addSubview(bgImageView)
        addSubview(profileImageView)
        
        addSubview(friendsLabel)
        addSubview(postsLabel)
        addSubview(docsLabel)
        addSubview(friendsNumber)
        addSubview(docsNumber)
        addSubview(postsNumber)
        
        addSubview(friendButton)
        addSubview(messageButton)
        addSubview(pokeButton)
        
        let profileStackView = UIStackView(arrangedSubviews: [profileViewOne, profileViewTwo, profileViewThree])
        profileStackView.distribution = .fillEqually
        profileStackView.axis = .horizontal
        
        addSubview(profileStackView)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 40)
        
        bgImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 30)
        
        usernameLabel.anchor(profileImageView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        schoolLabel.anchor(usernameLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        bioLabel.anchor(schoolLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        friendButton.anchor(profileStackView.topAnchor, left: profileViewOne.leftAnchor, bottom: nil, right: nil, topConstant: 4, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 20)
        
        messageButton.anchor(profileStackView.topAnchor, left: profileViewTwo.leftAnchor, bottom: nil, right: nil, topConstant: 4, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 20)
        
        pokeButton.anchor(profileStackView.topAnchor, left: profileViewThree.leftAnchor, bottom: nil, right: nil, topConstant: 4, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 20)
        
        profileStackView.anchor(bioLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 80)
        
        friendsLabel.anchor(profileStackView.topAnchor, left: profileViewOne.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: (profileViewOne.frame.width/2), bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        docsLabel.anchor(profileStackView.topAnchor, left: profileViewTwo.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: (profileViewOne.frame.width/2), bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        postsLabel.anchor(profileStackView.topAnchor, left: profileViewThree.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: (profileViewOne.frame.width/2), bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        friendsNumber.anchor(friendsLabel.bottomAnchor, left: friendsLabel.leftAnchor, bottom: nil, right: nil, topConstant: 4, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        postsNumber.anchor(postsLabel.bottomAnchor, left: postsLabel.leftAnchor, bottom: nil, right: nil, topConstant: 4, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        docsNumber.anchor(docsLabel.bottomAnchor, left: docsLabel.leftAnchor, bottom: nil, right: nil, topConstant: 4, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
    
    override func setupViews() {
        super.setupViews()
        
        setupProfile()
    }
}
