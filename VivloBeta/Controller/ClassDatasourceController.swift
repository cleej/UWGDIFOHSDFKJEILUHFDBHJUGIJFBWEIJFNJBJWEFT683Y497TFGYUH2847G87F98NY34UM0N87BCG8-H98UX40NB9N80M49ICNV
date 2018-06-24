import LBTAComponents

class ClassDatasourceController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let classdatasource = ClassDatasource()
        self.datasource = classdatasource
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return .zero
    }
    
}
