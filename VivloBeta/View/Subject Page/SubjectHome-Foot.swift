import LBTAComponents

class UserHeaderTwo: DatasourceCell {
    
    override var datasourceItem: Any! {
        didSet {
            guard let subjectpage = datasourceItem as? SubjectPage else { return }
            subjectLabel.text = subjectpage.title
            subtitleLabel.text = subjectpage.subtitle
            isEnrolledBool = subjectpage.isEnrolledBool
            isCompletedBool = subjectpage.isCompletedBool
        }
    }
    
    let subjectLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Futura-Bold", size: 20)
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Futura-Bold", size: 15)
        return label
    }()
    
    var isEnrolledButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    var isCompletedButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    var isCompletedBool = true
    var isEnrolledBool = false
    
    fileprivate func enrollError() {
        if isCompletedBool == true && isEnrolledBool == true {
            print("Error: cannot be both enrolled and completed.")
        } else {
            print("Validated")
        }
    }
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(subjectLabel)
        addSubview(subtitleLabel)
        
        subjectLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        subtitleLabel.anchor(subjectLabel.bottomAnchor, left: subjectLabel.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        enrollError()
    }
}
