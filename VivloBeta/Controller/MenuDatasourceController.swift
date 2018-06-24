import LBTAComponents

class MenuDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let menudatasource = MenuDatasource()
        self.datasource = menudatasource
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return .zero
    }
    
}
