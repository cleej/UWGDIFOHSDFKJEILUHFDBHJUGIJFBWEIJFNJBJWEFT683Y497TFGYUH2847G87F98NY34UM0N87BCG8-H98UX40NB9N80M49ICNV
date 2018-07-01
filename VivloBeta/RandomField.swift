import LBTAComponents

class RandomField: DatasourceCell {
    
    let classLabel: UILabel = {
        let label = UILabel()
        label.text = "Algebra 1"
        label.font = UIFont(name: "Futura-Bold", size: 50)
        label.textColor = UIColor(r: 0, g: 185, b: 128)
        return label
    }()
    
    let usersNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "1,002,937,625 users"
        label.font = UIFont(name: "Futura", size: 25)
        label.textColor = .gray
        return label
    }()
    
    let joinButton: UIButton = {
        let button = UIButton()
        button.setTitle("Join", for: .normal)
        button.backgroundColor = UIColor(r: 0, g: 149, b: 165)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura", size: 20)
        return button
    }()
    
    let forumsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forums", for: .normal)
        button.backgroundColor = UIColor(r: 162, g: 0, b: 82)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Bold", size: 30)
        return button
    }()
    
    let membersButton: UIButton = {
        let button = UIButton()
        button.setTitle("Members", for: .normal)
        button.backgroundColor = UIColor(r: 76, g: 0, b: 139)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Bold", size: 30)
        return button
    }()
    
    let activityLabel: UILabel = {
        let label = UILabel()
        label.text = "Activity"
        label.font = UIFont(name: "Futura-Bold", size: 40)
        label.textColor = UIColor(r: 0, g: 185, b: 128)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(classLabel)
        addSubview(usersNumberLabel)
        addSubview(joinButton)
        addSubview(forumsButton)
        addSubview(membersButton)
        addSubview(activityLabel)
        
        classLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        usersNumberLabel.anchor(classLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        joinButton.anchor(usersNumberLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 10, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 30)
        
        forumsButton.anchor(joinButton.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 40, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 500, heightConstant: 100)
        
        membersButton.anchor(forumsButton.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 15, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 500, heightConstant: 100)
        
        activityLabel.anchor(membersButton.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 100, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}
