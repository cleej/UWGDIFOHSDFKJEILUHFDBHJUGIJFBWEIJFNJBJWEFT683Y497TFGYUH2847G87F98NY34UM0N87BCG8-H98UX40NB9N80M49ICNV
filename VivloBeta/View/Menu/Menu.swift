import LBTAComponents

class Menu: DatasourceCell {
    
    let menuLabel: UILabel = {
        let label = UILabel()
        label.text = "Menu"
        label.font = UIFont(name: "Futura-Bold", size: 40)
        return label
    }()
    
    let matchSubLabel: UILabel = {
        let label = UILabel()
        label.text = "Find a match!"
        label.font = UIFont(name: "Futura", size: 20)
        return label
    }()
    
    let profileSubLabel: UILabel = {
        let label = UILabel()
        label.text = "My profile"
        label.font = UIFont(name: "Futura", size: 20)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(menuLabel)
        addSubview(matchSubLabel)
        addSubview(profileSubLabel)
        
        menuLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        matchSubLabel.anchor(menuLabel.bottomAnchor, left: menuLabel.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        profileSubLabel.anchor(matchSubLabel.bottomAnchor, left: matchSubLabel.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
