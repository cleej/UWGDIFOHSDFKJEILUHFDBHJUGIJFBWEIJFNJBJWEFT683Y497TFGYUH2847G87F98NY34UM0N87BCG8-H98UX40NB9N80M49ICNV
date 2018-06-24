import LBTAComponents

class ClassLabelCell: DatasourceCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Classes"
        label.font = UIFont(name: "Futura-Bold", size: 20)
        return label
    }()
    
    let subLabelOne: UILabel = {
        let label = UILabel()
        label.text = "Enrolled"
        label.font = UIFont(name: "Futura", size: 15)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(titleLabel)
        addSubview(subLabelOne)
        
        titleLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        subLabelOne.anchor(titleLabel.bottomAnchor, left: titleLabel.leftAnchor, bottom: nil, right: nil, topConstant: 4, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}
