import LBTAComponents

class ProfileDatasource: Datasource {
    
    let users: [Profile] = {
        
        let placeholderImageView: UIImageView = {
            let placeholder = UIImageView()
            return placeholder
        }()
        
        let user = Profile(username: "Dan Brown", school: "Cyprus Bay High School", rating: 48, friends: 73, posts: 98, docs: 3, bioText: "Hi I'm a sophomore from Cyprus Bay and can help with most fields relating to high school math.", profileImage: placeholderImageView, bgImage: placeholderImageView)
        
        return [user]
        
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [ProfilePage.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [ProfilePage.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections() -> Int {
        return 1
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [ProfilePage.self]
    }
    
}
