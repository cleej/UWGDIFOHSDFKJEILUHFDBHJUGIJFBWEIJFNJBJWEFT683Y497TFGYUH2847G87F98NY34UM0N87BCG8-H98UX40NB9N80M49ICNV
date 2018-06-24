import LBTAComponents

class SubLabelTwo: DatasourceCell {
    
    let subLabelTwo: UILabel = {
        let label = UILabel()
        label.text = "Completed"
        label.font = UIFont(name: "Futura", size: 15)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(subLabelTwo)
        
        subLabelTwo.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 4, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
