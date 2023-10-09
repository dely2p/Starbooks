//
//  HomeViewController.swift
//  Starbooks
//
//  Created by elly on 2023/10/09.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    // MARK: - Properties
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: .init())
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>?
    
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        // set UI
        addSubViews()
        makeConstraints()
        
        // registration CollectionView
//        collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
        
        // set DataSource
        setDataSource()
        
        // SetSnapShot
        setSnapShot()
    }
    
    private func setDataSource() {
        
    }
    
    private func setSnapShot() {
        
    }
}

extension HomeViewController: UIComponentStyle {
    func addSubViews() {
        self.view.addSubview(collectionView)
    }
    
    func makeConstraints() {
        collectionView.snp.makeConstraints {
            $0.top.leading.trailing.bottom.equalToSuperview()
        }
    }
}
