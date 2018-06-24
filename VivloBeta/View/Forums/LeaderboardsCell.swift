import LBTAComponents

class LeaderboardsCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            print(datasourceItem!)
            
            guard let leaderboarduser = datasourceItem as? LeaderboardUser else { return }
            nameLabel.text = leaderboarduser.name
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let userPic: UIImageView = {
        let pic = UIImageView()
        pic.image = #imageLiteral(resourceName: "bgpic")
        pic.layer.cornerRadius = 20
        pic.clipsToBounds = true
        return pic
    }()
    
    override func setupViews() {
        super.setupViews()
        
        
    }
}
