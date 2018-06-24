import LBTAComponents

class RandomField: DatasourceCell {
    
    let classLabel: UILabel = {
        let label = UILabel()
        label.text = "Algebra 1"
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .green
        return label
    }()
    
    let usersNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "1,002,937,625 users"
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .gray
        return label
    }()
    
    let joinButton: UIButton = {
        let button = UIButton()
        button.setTitle("Join", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    let forumsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forums", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.clear, for: .normal)
        button.sizeToFit()
        return button
    }()
    
    let forumsLabel: UILabel = {
        let label = UILabel()
        label.text = "Forums"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    
    let membersButton: UIButton = {
        let button = UIButton()
        button.setTitle("Members", for: .normal)
        button.backgroundColor = .purple
        button.setTitleColor(.clear, for: .normal)
        return button
    }()
    
    let membersLabel: UILabel = {
        let label = UILabel()
        label.text = "Members"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    
    let activityLabel: UILabel = {
        let label = UILabel()
        label.text = "Activity"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(classLabel)
        addSubview(usersNumberLabel)
        addSubview(joinButton)
        addSubview(forumsButton)
        addSubview(forumsLabel)
        addSubview(membersButton)
        addSubview(membersLabel)
        addSubview(activityLabel)
        
        classLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        usersNumberLabel.anchor(classLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        joinButton.anchor(usersNumberLabel.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 10, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 30)
        
        forumsButton.anchor(joinButton.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 40, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 500, heightConstant: 100)
        
        forumsLabel.anchor(joinButton.bottomAnchor, left: forumsButton.leftAnchor, bottom: forumsButton.bottomAnchor, right: forumsButton.rightAnchor, topConstant: 33, leftConstant: 150, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 0)
        
        membersButton.anchor(forumsButton.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 15, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 500, heightConstant: 100)
        
        membersLabel.anchor(forumsButton.bottomAnchor, left: membersButton.leftAnchor, bottom: membersButton.bottomAnchor, right: membersButton.rightAnchor, topConstant: 22, leftConstant: 125, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        activityLabel.anchor(membersButton.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 100, leftConstant: 8, bottomConstant: 8, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}
