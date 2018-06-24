import LBTAComponents

class HomeDatasource: Datasource {
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeaderJunk.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooterOne.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [RandomField.self]
    }
    
    override func numberOfSections() -> Int {
        return 1
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return 1
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return self
    }
    
}
