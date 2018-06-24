import LBTAComponents

class MatchesCell: DatasourceCell {
    
    var delegate = HomeDatasourceController()
    
    override var datasourceItem: Any? {
        didSet {
            print(datasourceItem!)
            
            guard let matchUser = datasourceItem as? MatchProfile else { return }
            nameLabel.text = matchUser.name
            profileImageView.image = matchUser.profileImage
            usernameLabel.text = matchUser.username
            schoolLabel.text = matchUser.school
            
            let attributedText = NSMutableAttributedString(string: matchUser.name, attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 16)])
            
            let usernameString = "  \(matchUser.username)\n"
            attributedText.append(NSAttributedString(string: usernameString, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15), NSAttributedStringKey.foregroundColor: UIColor.gray]))
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 0
            let range = NSMakeRange(0, attributedText.string.characters.count)
            attributedText.addAttribute(NSAttributedStringKey.paragraphStyle, value: paragraphStyle, range: range)
            
            attributedText.append(NSAttributedString(string: matchUser.bioText, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16)]))
            
            bioTextView.attributedText = attributedText
        }
    }
    
    let matchesLabel: UILabel = {
        let matchesLabel = UILabel()
        matchesLabel.text = "MATCHES"
        matchesLabel.font = UIFont(name: "Glacial Indifference", size: 12)
        return matchesLabel
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "bgpic")
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Glacial Indifference", size: 11)
        label.backgroundColor = .clear
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@emmasmith"
        label.font = UIFont(name: "Glacial Indifference", size: 11)
        label.backgroundColor = .clear
        return label
    }()
    
    let schoolLabel: UILabel = {
        let label = UILabel()
        label.text = "Cyprus Bay High School"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .gray
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Hi!"
        textView.backgroundColor = .clear
        return textView
    }()
    
    let locationIV: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .gray
        return iv
    }()
    
    @IBAction @objc func onTap(_ sender: UITapGestureRecognizer) {
        print("Hi")
        self.delegate.navHomeToProfile(sender: profileImageView)
    }
    
    override func setupViews() {
        super.setupViews()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(MatchesCell.onTap(_:)))
        
        addSubview(matchesLabel)
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(schoolLabel)
        addSubview(bioTextView)
        addSubview(usernameLabel)
        addSubview(locationIV)
        
        profileImageView.addGestureRecognizer(tap)
        
        profileImageView.isUserInteractionEnabled = true
        
        profileImageView.anchor(matchesLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        /*
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        */
        bioTextView.anchor(matchesLabel.bottomAnchor, left: profileImageView.rightAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        locationIV.anchor(bioTextView.bottomAnchor, left: bioTextView.leftAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 10, heightConstant: 10)
        
        /*
        usernameLabel.anchor(nameLabel.topAnchor, left: nameLabel.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        */
        schoolLabel.anchor(locationIV.topAnchor, left: locationIV.rightAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
