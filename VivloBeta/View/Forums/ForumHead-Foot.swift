import LBTAComponents

class ForumHeader: DatasourceCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Forums"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Suggested Forums"
        label.font = UIFont.boldSystemFont(ofSize: 11)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        
        titleLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        subtitleLabel.anchor(titleLabel.bottomAnchor, left: titleLabel.leftAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
