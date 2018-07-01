import LBTAComponents

class HomeDatasource: Datasource {
    
    let activityNotifications: [newActivity] = {
        let activityOne = newActivity(groupName: "Forums", notifName: "Dan posted something.", notifPic: #imageLiteral(resourceName: "bgpic"))
        
        let activityTwo = newActivity(groupName: "", notifName: "Emma responded to a post.", notifPic: #imageLiteral(resourceName: "bgpic"))
        
        let activityThree = newActivity(groupName: "Messages", notifName: "Dan posted something.", notifPic: #imageLiteral(resourceName: "bgpic"))
        
        let activityFour = newActivity(groupName: "", notifName: "Emma posted something.", notifPic: #imageLiteral(resourceName: "bgpic"))
        
        return [activityOne, activityTwo, activityThree, activityFour]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeaderJunk.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooterOne.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [RandomField.self, subjectActivityCell.self]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else {
            return activityNotifications.count
        }
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 0 {
            return self
        }
        else {
            return activityNotifications[indexPath.item]
        }
    }
    
}
