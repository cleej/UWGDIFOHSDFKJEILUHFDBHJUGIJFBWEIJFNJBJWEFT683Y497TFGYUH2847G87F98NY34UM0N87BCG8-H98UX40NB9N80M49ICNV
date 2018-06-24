import LBTAComponents

let messageLabel: UILabel = {
    let label = UILabel()
    label.text = "MESSAGES"
    label.font = UIFont(name: "Glacial Indifference", size: 12)
    return label
}()

let moreButton: UIButton = {
    let button = UIButton()
    button.setTitle("See more", for: .normal)
    button.backgroundColor = .clear
    button.setTitleColor(.blue, for: .normal)
    return button
}()

let matchesLabel: UILabel = {
    let label = UILabel()
    label.text = "MATCHES"
    label.font = UIFont(name: "Glacial Indifference", size: 12)
    return label
}()

class UserHeaderOne: DatasourceCell {
    
    override func setupViews() {
        
        super.setupViews()
        
        addSubview(messageLabel)
        addSubview(moreButton)
        
        messageLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: -60, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        moreButton.anchor(messageLabel.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 30)
        
        setupMessages()
        
    }
    
    fileprivate func setupMessages() {
        let senderOneView = UIView()
        senderOneView.backgroundColor = .clear
        
        let senderTwoView = UIView()
        senderTwoView.backgroundColor = .clear
        
        let senderThreeView = UIView()
        senderThreeView.backgroundColor = .clear
        
        let senderFourView = UIView()
        senderFourView.backgroundColor = .clear
        
        let senderFiveView = UIView()
        senderFourView.backgroundColor = .clear
        
        let senderOnePic: UIButton = {
            let pic = UIButton()
            pic.layer.cornerRadius = 20
            pic.backgroundColor = .gray
            return pic
        }()
        
        let senderTwoPic: UIButton = {
            let pic = UIButton()
            pic.layer.cornerRadius = 20
            pic.backgroundColor = .gray
            return pic
        }()
        
        let senderThreePic: UIButton = {
            let pic = UIButton()
            pic.layer.cornerRadius = 20
            pic.backgroundColor = .gray
            return pic
        }()
        
        let senderFourPic: UIButton = {
            let pic = UIButton()
            pic.layer.cornerRadius = 20
            pic.backgroundColor = .gray
            return pic
        }()
        
        let senderFivePic: UIButton = {
            let pic = UIButton()
            pic.layer.cornerRadius = 20
            pic.backgroundColor = .gray
            return pic
        }()
        
        let senderNameOne: UILabel = {
            let label = UILabel()
            label.text = "Dan"
            label.font = UIFont.systemFont(ofSize: 12)
            return label
        }()
        
        let senderNameTwo: UILabel = {
            let label = UILabel()
            label.text = "Dan"
            label.font = UIFont.systemFont(ofSize: 12)
            return label
        }()
        
        let senderNameThree: UILabel = {
            let label = UILabel()
            label.text = "Dan"
            label.font = UIFont.systemFont(ofSize: 12)
            return label
        }()
        
        let senderNameFour: UILabel = {
            let label = UILabel()
            label.text = "Dan"
            label.font = UIFont.systemFont(ofSize: 12)
            return label
        }()
        
        let senderNameFive: UILabel = {
            let label = UILabel()
            label.text = "Dan"
            label.font = UIFont.systemFont(ofSize: 12)
            return label
        }()
        
        let messageStackView = UIStackView(arrangedSubviews: [senderOneView, senderTwoView, senderThreeView, senderFourView, senderFiveView])
        messageStackView.axis = .horizontal
        messageStackView.distribution = .fillEqually
        
        let nameStackView = UIStackView(arrangedSubviews: [senderNameOne, senderNameTwo, senderNameThree, senderNameFour, senderNameFive])
        nameStackView.axis = .horizontal
        nameStackView.distribution = .fillEqually
        
        addSubview(messageStackView)
        addSubview(nameStackView)
        
        messageStackView.anchor(messageLabel.bottomAnchor, left: messageLabel.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: -65, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 40)
        
        nameStackView.anchor(messageStackView.bottomAnchor, left: messageStackView.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        addSubview(senderOnePic)
        addSubview(senderTwoPic)
        addSubview(senderThreePic)
        addSubview(senderFourPic)
        addSubview(senderFivePic)
        
        addSubview(senderNameOne)
        addSubview(senderNameTwo)
        addSubview(senderNameThree)
        addSubview(senderNameFour)
        addSubview(senderNameFive)
        
        addSubview(matchesLabel)
        
        senderOnePic.anchor(senderOneView.topAnchor, left: senderOneView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 40)
        
        senderTwoPic.anchor(senderTwoView.topAnchor, left: senderTwoView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 40)
        
        senderThreePic.anchor(senderThreeView.topAnchor, left: senderThreeView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 40)
        
        senderFourPic.anchor(senderFourView.topAnchor, left: senderFourView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 40)
        
        senderFivePic.anchor(senderFiveView.topAnchor, left: senderFiveView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 40)
        
        
        
        senderNameOne.anchor(senderOneView.bottomAnchor, left: senderOneView.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        senderNameTwo.anchor(senderTwoView.bottomAnchor, left: senderTwoView.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        senderNameThree.anchor(senderThreeView.bottomAnchor, left: senderThreeView.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        senderNameFour.anchor(senderFourView.bottomAnchor, left: senderFourView.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        senderNameFive.anchor(senderFiveView.bottomAnchor, left: senderFiveView.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        matchesLabel.anchor(senderNameOne.bottomAnchor, left: senderNameOne.leftAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 8, leftConstant: -8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}

class UserFooterOne: DatasourceCell {
    
}

class UserHeaderJunk: DatasourceCell {
    
}








