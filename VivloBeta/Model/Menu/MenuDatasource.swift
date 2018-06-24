import LBTAComponents

class MenuDatasource: Datasource {
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [Menu.self]
    }
}
