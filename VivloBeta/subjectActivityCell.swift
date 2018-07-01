import LBTAComponents

class subjectActivityCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let activity = datasourceItem as? newActivity else { return }
            
            groupName.text = activity.groupName
            notifName.text = activity.notifName
            pic.image = activity.notifPic
        }
    }
    
    let groupName: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    let notifName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    let pic: UIImageView = {
        let pic = UIImageView()
        return pic
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(groupName)
        addSubview(notifName)
        addSubview(pic)
        
        groupName.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        notifName.anchor(groupName.bottomAnchor, left: pic.rightAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        pic.anchor(groupName.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 30, heightConstant: 30)
    }
}
