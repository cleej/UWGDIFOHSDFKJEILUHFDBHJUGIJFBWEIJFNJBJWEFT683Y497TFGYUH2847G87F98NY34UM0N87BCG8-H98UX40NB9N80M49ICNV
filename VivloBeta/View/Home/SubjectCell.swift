import LBTAComponents

class SubjectCell: DatasourceCell {
    
    var delegate = HomeDatasourceController()
    
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
        label.text = "56,637" + " users"
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
    
    let swipeLabel: UILabel = {
        let label = UILabel()
        label.text = "Swipe left"
        label.font = UIFont(name: "Futura-Bold", size: 40)
        label.textColor = .white
        label.alpha = 0.0
        return label
    }()
    
    @IBAction @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if swipeLabel.alpha < 0.5 {
            SubjectCell.animate(withDuration: 0.5) {
                self.classLabel.alpha = 0.0
            }
            SubjectCell.animate(withDuration: 0.5) {
                self.swipeLabel.alpha = 1.0
            }
            SubjectCell.animate(withDuration: 0.5) {
                self.userCountLabel.text = self.classLabel.text
            }
        }
    }
    
    @objc func onSwipe() {
        self.delegate.navHomeToClass(sender: classLabel)
    }
    
    override func setupViews() {
        super.setupViews()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(SubjectCell.handleTap(_:)))
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(SubjectCell.onSwipe))
        
        swipe.direction = UISwipeGestureRecognizerDirection.left
        
        addSubview(classLabel)
        addSubview(userCountLabel)
        addSubview(classImageView)
        addSubview(swipeLabel)
        
        classLabel.addGestureRecognizer(tap)
        classLabel.addGestureRecognizer(swipe)
        swipeLabel.addGestureRecognizer(swipe)
        
        classLabel.isUserInteractionEnabled = true
        swipeLabel.isUserInteractionEnabled = true
        
        classLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 20, leftConstant: 24, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        userCountLabel.anchor(classLabel.bottomAnchor, left: classLabel.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        classImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        swipeLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 20, leftConstant: 24, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        classImageView.superview?.sendSubview(toBack: classImageView)
    }
}
