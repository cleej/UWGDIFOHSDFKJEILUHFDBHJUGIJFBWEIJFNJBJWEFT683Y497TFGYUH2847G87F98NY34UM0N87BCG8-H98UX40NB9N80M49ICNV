import LBTAComponents

class ActivityCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            print(datasourceItem!)
            
            guard let activity = datasourceItem as? Activity else { return }
            
            titleLabel.text = activity.title
            notifPic.image = activity.correspondingPic
            groupLabel.text = activity.groupTitle
        }
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let groupLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 11)
        return label
    }()
    
    let notifPic: UIImageView = {
        let pic = UIImageView()
        return pic
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(notifPic)
        addSubview(groupLabel)
        addSubview(titleLabel)
        
        notifPic.anchor(self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 30, heightConstant: 30)
        
        groupLabel.anchor(notifPic.topAnchor, left: notifPic.rightAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        titleLabel.anchor(groupLabel.bottomAnchor, left: notifPic.rightAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
