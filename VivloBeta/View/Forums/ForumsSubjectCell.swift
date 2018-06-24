import LBTAComponents

class ForumSubjectCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            print(datasourceItem!)
            
            guard let sub = datasourceItem as? Subject else { return }
            classLabel.text = sub.title
            userCount = sub.userCount
            bgImage = sub.classImage
            isEnrolled = sub.enrollVar
            isCompleted = sub.isCompleted
        }
    }
    
    let classLabel: UILabel = {
        let label = UILabel()
        label.text = "Algebra 1"
        label.font = UIFont(name: "Futura-Bold", size: 40)
        
        label.textColor = .white
        return label
    }()
    
    var userCount = 5
    
    let userCountLabel: UILabel = {
        let label = UILabel()
        label.text = "56,637"
        label.font = UIFont(name: "Futura", size: 15)
        label.textColor = .white
        return label
    }()
    
    let userLabel: UILabel = {
        let label = UILabel()
        label.text = "users"
        label.font = UIFont(name: "Futura", size: 15)
        label.textColor = .white
        return label
    }()
    
    var bgImage = #imageLiteral(resourceName: "bgpic")
    
    let classImageView: UIImageView = {
        let imageOne = UIImageView()
        imageOne.image = #imageLiteral(resourceName: "bgpic")
        imageOne.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        return imageOne
    }()
    
    var isEnrolled = true;
    
    var isCompleted = false;
    
    let subTitle: UILabel = {
        let label = UILabel()
        label.text = "Classes"
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(classLabel)
        addSubview(userCountLabel)
        addSubview(classImageView)
        addSubview(userLabel)
        
        classLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 20, leftConstant: 24, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        userCountLabel.anchor(classLabel.bottomAnchor, left: classLabel.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        classImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        userLabel.anchor(classLabel.bottomAnchor, left: userCountLabel.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        classImageView.superview?.sendSubview(toBack: classImageView)
    }
}
