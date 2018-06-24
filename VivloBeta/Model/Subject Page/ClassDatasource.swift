import LBTAComponents

class ClassDatasource: Datasource {
    
    let subjectPages: [SubjectPage] = {
        let subject = SubjectPage(title: "Algebra 1", subtitle: "53763 users", isEnrolledBool: true, isCompletedBool: false)
        
        return [subject]
    }()
    
    let subjects: [Subject] = {
        let classOne = Subject(title: "Algebra 1", userCount: 64537, enrollVar: true, isCompleted: false, classImage: #imageLiteral(resourceName: "bgpic"))
        
        let classTwo = Subject(title: "Calculus AB", userCount: 75457, enrollVar: false, isCompleted: true, classImage: #imageLiteral(resourceName: "bgpic"))
        
        return [classOne, classTwo]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeaderTwo.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [ClassLabelCell.self, SubLabelTwo.self, CurrentClassCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return subjects[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return subjects.count
    }
    
    override func numberOfSections() -> Int {
        return 3
    }
    
}
