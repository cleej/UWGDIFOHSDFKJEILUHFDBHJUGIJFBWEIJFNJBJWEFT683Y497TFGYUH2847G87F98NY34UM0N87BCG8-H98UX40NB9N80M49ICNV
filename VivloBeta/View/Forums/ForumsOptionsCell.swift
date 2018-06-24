import LBTAComponents

class ForumsOptionsCell: DatasourceCell {
    
    let newButton: UIButton = {
        let button = UIButton()
        button.setTitle("New post", for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Bold", size: 20)
        return button
    }()
    
    let exploreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Explore", for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Bold", size: 20)
        return button
    }()
    
    let leadLabel: UILabel = {
        let label = UILabel()
        label.text = "Leaderboards"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(newButton)
        addSubview(exploreButton)
        addSubview(leadLabel)
        
        newButton.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 40)
        
        exploreButton.anchor(newButton.bottomAnchor, left: newButton.leftAnchor, bottom: nil, right: newButton.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 40)
        
        leadLabel.anchor(exploreButton.bottomAnchor, left: exploreButton.leftAnchor, bottom: self.bottomAnchor, right: exploreButton.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
