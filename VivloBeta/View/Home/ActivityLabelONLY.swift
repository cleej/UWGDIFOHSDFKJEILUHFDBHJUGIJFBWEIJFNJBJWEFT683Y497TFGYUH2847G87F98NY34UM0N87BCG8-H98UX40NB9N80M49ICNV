import LBTAComponents

class ActivityLabel: DatasourceCell {
    
    let activityLabel: UILabel = {
        let label = UILabel()
        label.text = "Activity"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(activityLabel)
        
        activityLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
