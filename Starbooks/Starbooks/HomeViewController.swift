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
        dataSource = UICollectionViewDiffableDataSource(collectionView: collectionView, cellProvider: { collectionView, indexPath, itemIdentifier in
            switch itemIdentifier {
            case .menuSuggestion(let menuItem):
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuSuggestionCollectionViewCell.cellIdentifier, for: indexPath) as? MenuSuggestionCollectionViewCell else { return UICollectionViewCell() }
                cell.config(menuItem.imageUrl, menuItem.title)
                return cell
            case .event(let eventItem):
                <#code#>
            }
        })
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
