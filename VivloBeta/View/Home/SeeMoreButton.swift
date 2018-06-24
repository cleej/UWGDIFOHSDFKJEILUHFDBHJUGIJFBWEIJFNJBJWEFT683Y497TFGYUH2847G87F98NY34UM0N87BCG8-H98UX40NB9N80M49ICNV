import LBTAComponents

class SeeMoreButton: DatasourceCell {
    
    let seeMoreLabel: UILabel = {
        let label = UILabel()
        label.text = "See all"
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = .clear
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(seeMoreLabel)
        
        seeMoreLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
